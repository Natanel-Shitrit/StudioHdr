//	StudioHdr is a SourcePawn library (.inc) that lets developers get information about entity models.
//	Copyright (C) 2021  Natanel 'LuqS' Shitrit

//	This program is free software: you can redistribute it and/or modify
//	it under the terms of the GNU General Public License as published by
//	the Free Software Foundation, either version 3 of the License, or
//	(at your option) any later version.

//	This program is distributed in the hope that it will be useful,
//	but WITHOUT ANY WARRANTY; without even the implied warranty of
//	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//	GNU General Public License for more details.

//	You should have received a copy of the GNU General Public License
//	along with this program.  If not, see <https://www.gnu.org/licenses/>.

#if defined _studio_hdr_included
 #endinput
#endif
#define _studio_hdr_included

#define INVALID_ADDRESS_OFFSET view_as<Address>(-1)

// Functions to get CStudioHdr from model path & delete it.
Handle load_model;
Handle delete_model;

// Object that represents an address.
methodmap AddressObject
{
	// Make sure the this address is not 0.
	public void Validate()
	{
		if (view_as<Address>(this) == Address_Null)
		{
			ThrowError("Invalid Object.");
		}
	}
}

// StudioHdr //
enum StudioHdr
{
	NULL_STUDIO_HDR
}

methodmap StudioHdr < AddressObject
{
	// Constructor [model path]
	public StudioHdr(const char[] model_path)
	{
		// Create a new CStudioHdr variable based on the model path.
		Address CStudioHdr = SDKCall(load_model, model_path);
		
		if (!CStudioHdr)
		{
			return NULL_STUDIO_HDR;
		}
		
		// Load 'studiohdr_t *m_pStudioHdr' from 'CStudioHdr' pointer. (can be treated as if it was a studiohdr_t **)
		StudioHdr m_pStudioHdr = view_as<StudioHdr>(LoadFromAddress(CStudioHdr, NumberType_Int32));
		
		// Delete the CStudioHdr variable to not leak memory.
		SDKCall(delete_model, CStudioHdr);
		
		// Return the 'studiohdr_t' variable.
		return m_pStudioHdr;
	}
}

// Loads a string from memory (null-terminated).
stock void LoadStringFromAddress(Address charptr, char[] buffer, int buffer_size)
{
	int current_char_index;
	while (current_char_index < buffer_size && (buffer[current_char_index] = view_as<char>(LoadFromAddress(charptr + view_as<Address>(current_char_index), NumberType_Int8))))
	{
		current_char_index++;
	}
	
	buffer[current_char_index] = '\0';
}

// Loads an array of values from memory.
stock void LoadArrayFromAddress(Address address, any[] buffer, int size, NumberType datasize = NumberType_Int32)
{
	int datasize_bytes = view_as<int>(datasize) + (datasize == NumberType_Int32 ? 2 : 1);
	for (int current_index; current_index < size; current_index++)
	{
		buffer[current_index] = LoadFromAddress(address + view_as<Address>(datasize_bytes * current_index), datasize);
	}
}

stock StudioHdr GetEntityStudioHdr(int entity)
{
	char model[PLATFORM_MAX_PATH];
	GetEntPropString(entity, Prop_Data, "m_ModelName", model, sizeof(model));
	return StudioHdr(model);
}

public void OnPluginStart()
{
	GameData gamedata = new GameData("studio_hdr.games");
	
	if (!gamedata)
	{
		SetFailState("Couldn't find gamedata file 'studio_hdr.games.txt'.");
	}
	
	PrepareSDKCalls(gamedata);

	delete gamedata;
	
	_OnPluginStart();
}

void PrepareSDKCalls(GameData gamedata)
{
	// CStudioHdr *ModelSoundsCache_LoadModel( const char *filename )
	StartPrepSDKCall(SDKCall_Static);
	PrepSDKCall_SetFromConf(gamedata, SDKConf_Signature, "ModelSoundsCache_LoadModel");
	
	PrepSDKCall_AddParameter(SDKType_String, SDKPass_Pointer);
	PrepSDKCall_SetReturnInfo(SDKType_PlainOldData, SDKPass_Plain);
	
	if (!(load_model = EndPrepSDKCall()))
	{
		SetFailState("Missing signature 'ModelSoundsCache_LoadModel'");
	}
	
	// void ModelSoundsCache_FinishModel( CStudioHdr *hdr )
	StartPrepSDKCall(SDKCall_Static);
	PrepSDKCall_SetFromConf(gamedata, SDKConf_Signature, "ModelSoundsCache_FinishModel");
	
	PrepSDKCall_AddParameter(SDKType_PlainOldData, SDKPass_Plain);
	
	if (!(delete_model = EndPrepSDKCall()))
	{
		SetFailState("Missing signature 'ModelSoundsCache_FinishModel'");
	}
}

#define OnPluginStart _OnPluginStart