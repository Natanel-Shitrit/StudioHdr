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

#include <sdktools>

#define INVALID_ADDRESS_OFFSET view_as<Address>(-1)

// Functions to get CStudioHdr from model path & delete it.
Handle load_model;
Handle delete_model;

enum struct studiohdr_t
{
	int size;
	Address id;
	Address version;
	Address checksum;
	Address name;
	Address length;
	Address eyeposition;
	Address illumposition;
	Address hull_min;
	Address hull_max;
	Address view_bbmin;
	Address view_bbmax;
	Address flags;
	Address numbones;
	Address boneindex;
	Address numbonecontrollers;
	Address bonecontrollerindex;
	Address numhitboxsets;
	Address hitboxsetindex;
	Address numlocalanim;
	Address localanimindex;
	Address numlocalseq;
	Address localseqindex;
	Address activitylistversion;
	Address eventsindexed;
	Address numtextures;
	Address textureindex;
	Address numcdtextures;
	Address cdtextureindex;
	Address numskinref;
	Address numskinfamilies;
	Address skinindex;
	Address numbodyparts;
	Address bodypartindex;
	Address numlocalattachments;
	Address localattachmentindex;
	Address numlocalnodes;
	Address localnodeindex;
	Address localnodenameindex;
	Address numflexdesc;
	Address flexdescindex;
	Address numflexcontrollers;
	Address flexcontrollerindex;
	Address numflexrules;
	Address flexruleindex;
	Address numikchains;
	Address ikchainindex;
	Address nummouths;
	Address mouthindex;
	Address numlocalposeparameters;
	Address localposeparamindex;
	Address surfacepropindex;
	Address keyvalueindex;
	Address keyvaluesize;
	Address numlocalikautoplaylocks;
	Address localikautoplaylockindex;
	Address mass;
	Address contents;
	Address numincludemodels;
	Address includemodelindex;
	Address szanimblocknameindex;
	Address numanimblocks;
	Address animblockindex;
	Address bonetablebynameindex;
	Address constdirectionallightdot;
	Address rootLOD;
	Address numAllowedRootLODs;
	Address numflexcontrollerui;
	Address flexcontrolleruiindex;
	Address flVertAnimFixedPointScale;
	Address surfacepropLookup;
	Address studiohdr2index;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] studiohdr_t::id
		if ((this.id = view_as<Address>(gamedata.GetOffset("studiohdr_t::id"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::id' offset.");
		}

		// [offset] studiohdr_t::version
		if ((this.version = view_as<Address>(gamedata.GetOffset("studiohdr_t::version"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::version' offset.");
		}

		// [offset] studiohdr_t::checksum
		if ((this.checksum = view_as<Address>(gamedata.GetOffset("studiohdr_t::checksum"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::checksum' offset.");
		}

		// [offset] studiohdr_t::name
		if ((this.name = view_as<Address>(gamedata.GetOffset("studiohdr_t::name"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::name' offset.");
		}

		// [offset] studiohdr_t::length
		if ((this.length = view_as<Address>(gamedata.GetOffset("studiohdr_t::length"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::length' offset.");
		}

		// [offset] studiohdr_t::eyeposition
		if ((this.eyeposition = view_as<Address>(gamedata.GetOffset("studiohdr_t::eyeposition"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::eyeposition' offset.");
		}

		// [offset] studiohdr_t::illumposition
		if ((this.illumposition = view_as<Address>(gamedata.GetOffset("studiohdr_t::illumposition"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::illumposition' offset.");
		}

		// [offset] studiohdr_t::hull_min
		if ((this.hull_min = view_as<Address>(gamedata.GetOffset("studiohdr_t::hull_min"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::hull_min' offset.");
		}

		// [offset] studiohdr_t::hull_max
		if ((this.hull_max = view_as<Address>(gamedata.GetOffset("studiohdr_t::hull_max"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::hull_max' offset.");
		}

		// [offset] studiohdr_t::view_bbmin
		if ((this.view_bbmin = view_as<Address>(gamedata.GetOffset("studiohdr_t::view_bbmin"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::view_bbmin' offset.");
		}

		// [offset] studiohdr_t::view_bbmax
		if ((this.view_bbmax = view_as<Address>(gamedata.GetOffset("studiohdr_t::view_bbmax"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::view_bbmax' offset.");
		}

		// [offset] studiohdr_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("studiohdr_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::flags' offset.");
		}

		// [offset] studiohdr_t::numbones
		if ((this.numbones = view_as<Address>(gamedata.GetOffset("studiohdr_t::numbones"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numbones' offset.");
		}

		// [offset] studiohdr_t::boneindex
		if ((this.boneindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::boneindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::boneindex' offset.");
		}

		// [offset] studiohdr_t::numbonecontrollers
		if ((this.numbonecontrollers = view_as<Address>(gamedata.GetOffset("studiohdr_t::numbonecontrollers"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numbonecontrollers' offset.");
		}

		// [offset] studiohdr_t::bonecontrollerindex
		if ((this.bonecontrollerindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::bonecontrollerindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::bonecontrollerindex' offset.");
		}

		// [offset] studiohdr_t::numhitboxsets
		if ((this.numhitboxsets = view_as<Address>(gamedata.GetOffset("studiohdr_t::numhitboxsets"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numhitboxsets' offset.");
		}

		// [offset] studiohdr_t::hitboxsetindex
		if ((this.hitboxsetindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::hitboxsetindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::hitboxsetindex' offset.");
		}

		// [offset] studiohdr_t::numlocalanim
		if ((this.numlocalanim = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalanim"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numlocalanim' offset.");
		}

		// [offset] studiohdr_t::localanimindex
		if ((this.localanimindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localanimindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::localanimindex' offset.");
		}

		// [offset] studiohdr_t::numlocalseq
		if ((this.numlocalseq = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalseq"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numlocalseq' offset.");
		}

		// [offset] studiohdr_t::localseqindex
		if ((this.localseqindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localseqindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::localseqindex' offset.");
		}

		// [offset] studiohdr_t::activitylistversion
		if ((this.activitylistversion = view_as<Address>(gamedata.GetOffset("studiohdr_t::activitylistversion"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::activitylistversion' offset.");
		}

		// [offset] studiohdr_t::eventsindexed
		if ((this.eventsindexed = view_as<Address>(gamedata.GetOffset("studiohdr_t::eventsindexed"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::eventsindexed' offset.");
		}

		// [offset] studiohdr_t::numtextures
		if ((this.numtextures = view_as<Address>(gamedata.GetOffset("studiohdr_t::numtextures"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numtextures' offset.");
		}

		// [offset] studiohdr_t::textureindex
		if ((this.textureindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::textureindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::textureindex' offset.");
		}

		// [offset] studiohdr_t::numcdtextures
		if ((this.numcdtextures = view_as<Address>(gamedata.GetOffset("studiohdr_t::numcdtextures"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numcdtextures' offset.");
		}

		// [offset] studiohdr_t::cdtextureindex
		if ((this.cdtextureindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::cdtextureindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::cdtextureindex' offset.");
		}

		// [offset] studiohdr_t::numskinref
		if ((this.numskinref = view_as<Address>(gamedata.GetOffset("studiohdr_t::numskinref"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numskinref' offset.");
		}

		// [offset] studiohdr_t::numskinfamilies
		if ((this.numskinfamilies = view_as<Address>(gamedata.GetOffset("studiohdr_t::numskinfamilies"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numskinfamilies' offset.");
		}

		// [offset] studiohdr_t::skinindex
		if ((this.skinindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::skinindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::skinindex' offset.");
		}

		// [offset] studiohdr_t::numbodyparts
		if ((this.numbodyparts = view_as<Address>(gamedata.GetOffset("studiohdr_t::numbodyparts"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numbodyparts' offset.");
		}

		// [offset] studiohdr_t::bodypartindex
		if ((this.bodypartindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::bodypartindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::bodypartindex' offset.");
		}

		// [offset] studiohdr_t::numlocalattachments
		if ((this.numlocalattachments = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalattachments"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numlocalattachments' offset.");
		}

		// [offset] studiohdr_t::localattachmentindex
		if ((this.localattachmentindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localattachmentindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::localattachmentindex' offset.");
		}

		// [offset] studiohdr_t::numlocalnodes
		if ((this.numlocalnodes = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalnodes"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numlocalnodes' offset.");
		}

		// [offset] studiohdr_t::localnodeindex
		if ((this.localnodeindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localnodeindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::localnodeindex' offset.");
		}

		// [offset] studiohdr_t::localnodenameindex
		if ((this.localnodenameindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localnodenameindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::localnodenameindex' offset.");
		}

		// [offset] studiohdr_t::numflexdesc
		if ((this.numflexdesc = view_as<Address>(gamedata.GetOffset("studiohdr_t::numflexdesc"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numflexdesc' offset.");
		}

		// [offset] studiohdr_t::flexdescindex
		if ((this.flexdescindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::flexdescindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::flexdescindex' offset.");
		}

		// [offset] studiohdr_t::numflexcontrollers
		if ((this.numflexcontrollers = view_as<Address>(gamedata.GetOffset("studiohdr_t::numflexcontrollers"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numflexcontrollers' offset.");
		}

		// [offset] studiohdr_t::flexcontrollerindex
		if ((this.flexcontrollerindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::flexcontrollerindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::flexcontrollerindex' offset.");
		}

		// [offset] studiohdr_t::numflexrules
		if ((this.numflexrules = view_as<Address>(gamedata.GetOffset("studiohdr_t::numflexrules"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numflexrules' offset.");
		}

		// [offset] studiohdr_t::flexruleindex
		if ((this.flexruleindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::flexruleindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::flexruleindex' offset.");
		}

		// [offset] studiohdr_t::numikchains
		if ((this.numikchains = view_as<Address>(gamedata.GetOffset("studiohdr_t::numikchains"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numikchains' offset.");
		}

		// [offset] studiohdr_t::ikchainindex
		if ((this.ikchainindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::ikchainindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::ikchainindex' offset.");
		}

		// [offset] studiohdr_t::nummouths
		if ((this.nummouths = view_as<Address>(gamedata.GetOffset("studiohdr_t::nummouths"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::nummouths' offset.");
		}

		// [offset] studiohdr_t::mouthindex
		if ((this.mouthindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::mouthindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::mouthindex' offset.");
		}

		// [offset] studiohdr_t::numlocalposeparameters
		if ((this.numlocalposeparameters = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalposeparameters"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numlocalposeparameters' offset.");
		}

		// [offset] studiohdr_t::localposeparamindex
		if ((this.localposeparamindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localposeparamindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::localposeparamindex' offset.");
		}

		// [offset] studiohdr_t::surfacepropindex
		if ((this.surfacepropindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::surfacepropindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::surfacepropindex' offset.");
		}

		// [offset] studiohdr_t::keyvalueindex
		if ((this.keyvalueindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::keyvalueindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::keyvalueindex' offset.");
		}

		// [offset] studiohdr_t::keyvaluesize
		if ((this.keyvaluesize = view_as<Address>(gamedata.GetOffset("studiohdr_t::keyvaluesize"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::keyvaluesize' offset.");
		}

		// [offset] studiohdr_t::numlocalikautoplaylocks
		if ((this.numlocalikautoplaylocks = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalikautoplaylocks"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numlocalikautoplaylocks' offset.");
		}

		// [offset] studiohdr_t::localikautoplaylockindex
		if ((this.localikautoplaylockindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localikautoplaylockindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::localikautoplaylockindex' offset.");
		}

		// [offset] studiohdr_t::mass
		if ((this.mass = view_as<Address>(gamedata.GetOffset("studiohdr_t::mass"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::mass' offset.");
		}

		// [offset] studiohdr_t::contents
		if ((this.contents = view_as<Address>(gamedata.GetOffset("studiohdr_t::contents"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::contents' offset.");
		}

		// [offset] studiohdr_t::numincludemodels
		if ((this.numincludemodels = view_as<Address>(gamedata.GetOffset("studiohdr_t::numincludemodels"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numincludemodels' offset.");
		}

		// [offset] studiohdr_t::includemodelindex
		if ((this.includemodelindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::includemodelindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::includemodelindex' offset.");
		}

		// [offset] studiohdr_t::szanimblocknameindex
		if ((this.szanimblocknameindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::szanimblocknameindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::szanimblocknameindex' offset.");
		}

		// [offset] studiohdr_t::numanimblocks
		if ((this.numanimblocks = view_as<Address>(gamedata.GetOffset("studiohdr_t::numanimblocks"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numanimblocks' offset.");
		}

		// [offset] studiohdr_t::animblockindex
		if ((this.animblockindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::animblockindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::animblockindex' offset.");
		}

		// [offset] studiohdr_t::bonetablebynameindex
		if ((this.bonetablebynameindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::bonetablebynameindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::bonetablebynameindex' offset.");
		}

		// [offset] studiohdr_t::constdirectionallightdot
		if ((this.constdirectionallightdot = view_as<Address>(gamedata.GetOffset("studiohdr_t::constdirectionallightdot"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::constdirectionallightdot' offset.");
		}

		// [offset] studiohdr_t::rootLOD
		if ((this.rootLOD = view_as<Address>(gamedata.GetOffset("studiohdr_t::rootLOD"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::rootLOD' offset.");
		}

		// [offset] studiohdr_t::numAllowedRootLODs
		if ((this.numAllowedRootLODs = view_as<Address>(gamedata.GetOffset("studiohdr_t::numAllowedRootLODs"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numAllowedRootLODs' offset.");
		}

		// [offset] studiohdr_t::numflexcontrollerui
		if ((this.numflexcontrollerui = view_as<Address>(gamedata.GetOffset("studiohdr_t::numflexcontrollerui"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::numflexcontrollerui' offset.");
		}

		// [offset] studiohdr_t::flexcontrolleruiindex
		if ((this.flexcontrolleruiindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::flexcontrolleruiindex"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::flexcontrolleruiindex' offset.");
		}

		// [offset] studiohdr_t::flVertAnimFixedPointScale
		if ((this.flVertAnimFixedPointScale = view_as<Address>(gamedata.GetOffset("studiohdr_t::flVertAnimFixedPointScale"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::flVertAnimFixedPointScale' offset.");
		}

		// [offset] studiohdr_t::surfacepropLookup
		if ((this.surfacepropLookup = view_as<Address>(gamedata.GetOffset("studiohdr_t::surfacepropLookup"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::surfacepropLookup' offset.");
		}

		// [offset] studiohdr_t::studiohdr2index
		if ((this.studiohdr2index = view_as<Address>(gamedata.GetOffset("studiohdr_t::studiohdr2index"))) == INVALID_ADDRESS_OFFSET)
		{
			SetFailState("Failed to get 'studiohdr_t::studiohdr2index' offset.");
		}

		// [sizeof] studiohdr_t
		if ((this.size = gamedata.GetOffset("sizeof::studiohdr_t")) == -1)
		{
		    SetFailState("Failed to get 'studiohdr_t' sizeof.");
		}
	}
}

enum struct mstudiobone_t
{
	int size;
	Address sznameindex;
	Address parent;
	Address bonecontroller;
	Address pos;
	Address quat;
	Address rot;
	Address posscale;
	Address rotscale;
	Address poseToBone;
	Address qAlignment;
	Address flags;
	Address proctype;
	Address procindex;
	Address physicsbone;
	Address surfacepropidx;
	Address contents;
	Address surfacepropLookup;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiobone_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudiobone_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::sznameindex' offset.");
		}

		// [offset] mstudiobone_t::parent
		if ((this.parent = view_as<Address>(gamedata.GetOffset("mstudiobone_t::parent"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::parent' offset.");
		}

		// [offset] mstudiobone_t::bonecontroller
		if ((this.bonecontroller = view_as<Address>(gamedata.GetOffset("mstudiobone_t::bonecontroller"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::bonecontroller' offset.");
		}

		// [offset] mstudiobone_t::pos
		if ((this.pos = view_as<Address>(gamedata.GetOffset("mstudiobone_t::pos"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::pos' offset.");
		}

		// [offset] mstudiobone_t::quat
		if ((this.quat = view_as<Address>(gamedata.GetOffset("mstudiobone_t::quat"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::quat' offset.");
		}

		// [offset] mstudiobone_t::rot
		if ((this.rot = view_as<Address>(gamedata.GetOffset("mstudiobone_t::rot"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::rot' offset.");
		}

		// [offset] mstudiobone_t::posscale
		if ((this.posscale = view_as<Address>(gamedata.GetOffset("mstudiobone_t::posscale"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::posscale' offset.");
		}

		// [offset] mstudiobone_t::rotscale
		if ((this.rotscale = view_as<Address>(gamedata.GetOffset("mstudiobone_t::rotscale"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::rotscale' offset.");
		}

		// [offset] mstudiobone_t::poseToBone
		if ((this.poseToBone = view_as<Address>(gamedata.GetOffset("mstudiobone_t::poseToBone"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::poseToBone' offset.");
		}

		// [offset] mstudiobone_t::qAlignment
		if ((this.qAlignment = view_as<Address>(gamedata.GetOffset("mstudiobone_t::qAlignment"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::qAlignment' offset.");
		}

		// [offset] mstudiobone_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("mstudiobone_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::flags' offset.");
		}

		// [offset] mstudiobone_t::proctype
		if ((this.proctype = view_as<Address>(gamedata.GetOffset("mstudiobone_t::proctype"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::proctype' offset.");
		}

		// [offset] mstudiobone_t::procindex
		if ((this.procindex = view_as<Address>(gamedata.GetOffset("mstudiobone_t::procindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::procindex' offset.");
		}

		// [offset] mstudiobone_t::physicsbone
		if ((this.physicsbone = view_as<Address>(gamedata.GetOffset("mstudiobone_t::physicsbone"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::physicsbone' offset.");
		}

		// [offset] mstudiobone_t::surfacepropidx
		if ((this.surfacepropidx = view_as<Address>(gamedata.GetOffset("mstudiobone_t::surfacepropidx"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::surfacepropidx' offset.");
		}

		// [offset] mstudiobone_t::contents
		if ((this.contents = view_as<Address>(gamedata.GetOffset("mstudiobone_t::contents"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::contents' offset.");
		}

		// [offset] mstudiobone_t::surfacepropLookup
		if ((this.surfacepropLookup = view_as<Address>(gamedata.GetOffset("mstudiobone_t::surfacepropLookup"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::surfacepropLookup' offset.");
		}

		// [sizeof] mstudiobone_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiobone_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiobone_t' sizeof.");
		}
	}
}

enum struct mstudiobonecontroller_t
{
	int size;
	Address bone;
	Address type;
	Address start;
	Address end;
	Address rest;
	Address inputfield;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiobonecontroller_t::bone
		if ((this.bone = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::bone"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::bone' offset.");
		}

		// [offset] mstudiobonecontroller_t::type
		if ((this.type = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::type"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::type' offset.");
		}

		// [offset] mstudiobonecontroller_t::start
		if ((this.start = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::start"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::start' offset.");
		}

		// [offset] mstudiobonecontroller_t::end
		if ((this.end = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::end"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::end' offset.");
		}

		// [offset] mstudiobonecontroller_t::rest
		if ((this.rest = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::rest"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::rest' offset.");
		}

		// [offset] mstudiobonecontroller_t::inputfield
		if ((this.inputfield = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::inputfield"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::inputfield' offset.");
		}

		// [sizeof] mstudiobonecontroller_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiobonecontroller_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t' sizeof.");
		}
	}
}

enum struct mstudiohitboxset_t
{
	int size;
	Address sznameindex;
	Address numhitboxes;
	Address hitboxindex;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiohitboxset_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudiohitboxset_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiohitboxset_t::sznameindex' offset.");
		}

		// [offset] mstudiohitboxset_t::numhitboxes
		if ((this.numhitboxes = view_as<Address>(gamedata.GetOffset("mstudiohitboxset_t::numhitboxes"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiohitboxset_t::numhitboxes' offset.");
		}

		// [offset] mstudiohitboxset_t::hitboxindex
		if ((this.hitboxindex = view_as<Address>(gamedata.GetOffset("mstudiohitboxset_t::hitboxindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiohitboxset_t::hitboxindex' offset.");
		}

		// [sizeof] mstudiohitboxset_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiohitboxset_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiohitboxset_t' sizeof.");
		}
	}
}

enum struct mstudiobbox_t
{
	int size;
	Address bone;
	Address group;
	Address bbmin;
	Address bbmax;
	Address szhitboxnameindex;
	Address angOffsetOrientation;
	Address flCapsuleRadius;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiobbox_t::bone
		if ((this.bone = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::bone"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::bone' offset.");
		}

		// [offset] mstudiobbox_t::group
		if ((this.group = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::group"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::group' offset.");
		}

		// [offset] mstudiobbox_t::bbmin
		if ((this.bbmin = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::bbmin"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::bbmin' offset.");
		}

		// [offset] mstudiobbox_t::bbmax
		if ((this.bbmax = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::bbmax"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::bbmax' offset.");
		}

		// [offset] mstudiobbox_t::szhitboxnameindex
		if ((this.szhitboxnameindex = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::szhitboxnameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::szhitboxnameindex' offset.");
		}

		// [offset] mstudiobbox_t::angOffsetOrientation
		if ((this.angOffsetOrientation = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::angOffsetOrientation"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::angOffsetOrientation' offset.");
		}

		// [offset] mstudiobbox_t::flCapsuleRadius
		if ((this.flCapsuleRadius = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::flCapsuleRadius"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::flCapsuleRadius' offset.");
		}

		// [sizeof] mstudiobbox_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiobbox_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiobbox_t' sizeof.");
		}
	}
}

enum struct mstudioanimdesc_t
{
	int size;
	Address baseptr;
	Address sznameindex;
	Address fps;
	Address flags;
	Address numframes;
	Address nummovements;
	Address movementindex;
	Address ikrulezeroframeindex;
	Address animblock;
	Address animindex;
	Address numikrules;
	Address ikruleindex;
	Address animblockikruleindex;
	Address numlocalhierarchy;
	Address localhierarchyindex;
	Address sectionindex;
	Address sectionframes;
	Address zeroframespan;
	Address zeroframecount;
	Address zeroframeindex;
	Address zeroframestalltime;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioanimdesc_t::baseptr
		if ((this.baseptr = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::baseptr"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::baseptr' offset.");
		}

		// [offset] mstudioanimdesc_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::sznameindex' offset.");
		}

		// [offset] mstudioanimdesc_t::fps
		if ((this.fps = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::fps"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::fps' offset.");
		}

		// [offset] mstudioanimdesc_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::flags' offset.");
		}

		// [offset] mstudioanimdesc_t::numframes
		if ((this.numframes = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::numframes"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::numframes' offset.");
		}

		// [offset] mstudioanimdesc_t::nummovements
		if ((this.nummovements = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::nummovements"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::nummovements' offset.");
		}

		// [offset] mstudioanimdesc_t::movementindex
		if ((this.movementindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::movementindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::movementindex' offset.");
		}

		// [offset] mstudioanimdesc_t::ikrulezeroframeindex
		if ((this.ikrulezeroframeindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::ikrulezeroframeindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::ikrulezeroframeindex' offset.");
		}

		// [offset] mstudioanimdesc_t::animblock
		if ((this.animblock = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::animblock"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::animblock' offset.");
		}

		// [offset] mstudioanimdesc_t::animindex
		if ((this.animindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::animindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::animindex' offset.");
		}

		// [offset] mstudioanimdesc_t::numikrules
		if ((this.numikrules = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::numikrules"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::numikrules' offset.");
		}

		// [offset] mstudioanimdesc_t::ikruleindex
		if ((this.ikruleindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::ikruleindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::ikruleindex' offset.");
		}

		// [offset] mstudioanimdesc_t::animblockikruleindex
		if ((this.animblockikruleindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::animblockikruleindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::animblockikruleindex' offset.");
		}

		// [offset] mstudioanimdesc_t::numlocalhierarchy
		if ((this.numlocalhierarchy = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::numlocalhierarchy"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::numlocalhierarchy' offset.");
		}

		// [offset] mstudioanimdesc_t::localhierarchyindex
		if ((this.localhierarchyindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::localhierarchyindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::localhierarchyindex' offset.");
		}

		// [offset] mstudioanimdesc_t::sectionindex
		if ((this.sectionindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::sectionindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::sectionindex' offset.");
		}

		// [offset] mstudioanimdesc_t::sectionframes
		if ((this.sectionframes = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::sectionframes"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::sectionframes' offset.");
		}

		// [offset] mstudioanimdesc_t::zeroframespan
		if ((this.zeroframespan = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::zeroframespan"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::zeroframespan' offset.");
		}

		// [offset] mstudioanimdesc_t::zeroframecount
		if ((this.zeroframecount = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::zeroframecount"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::zeroframecount' offset.");
		}

		// [offset] mstudioanimdesc_t::zeroframeindex
		if ((this.zeroframeindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::zeroframeindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::zeroframeindex' offset.");
		}

		// [offset] mstudioanimdesc_t::zeroframestalltime
		if ((this.zeroframestalltime = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::zeroframestalltime"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::zeroframestalltime' offset.");
		}

		// [sizeof] mstudioanimdesc_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioanimdesc_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t' sizeof.");
		}
	}
}

enum struct mstudioiklock_t
{
	int size;
	Address chain;
	Address flPosWeight;
	Address flLocalQWeight;
	Address flags;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioiklock_t::chain
		if ((this.chain = view_as<Address>(gamedata.GetOffset("mstudioiklock_t::chain"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioiklock_t::chain' offset.");
		}

		// [offset] mstudioiklock_t::flPosWeight
		if ((this.flPosWeight = view_as<Address>(gamedata.GetOffset("mstudioiklock_t::flPosWeight"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioiklock_t::flPosWeight' offset.");
		}

		// [offset] mstudioiklock_t::flLocalQWeight
		if ((this.flLocalQWeight = view_as<Address>(gamedata.GetOffset("mstudioiklock_t::flLocalQWeight"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioiklock_t::flLocalQWeight' offset.");
		}

		// [offset] mstudioiklock_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("mstudioiklock_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioiklock_t::flags' offset.");
		}

		// [sizeof] mstudioiklock_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioiklock_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioiklock_t' sizeof.");
		}
	}
}

enum struct mstudioseqdesc_t
{
	int size;
	Address baseptr;
	Address szlabelindex;
	Address szactivitynameindex;
	Address flags;
	Address activity;
	Address actweight;
	Address numevents;
	Address eventindex;
	Address bbmin;
	Address bbmax;
	Address numblends;
	Address animindexindex;
	Address movementindex;
	Address groupsize;
	Address paramindex;
	Address paramstart;
	Address paramend;
	Address paramparent;
	Address fadeintime;
	Address fadeouttime;
	Address localentrynode;
	Address localexitnode;
	Address nodeflags;
	Address entryphase;
	Address exitphase;
	Address lastframe;
	Address nextseq;
	Address pose;
	Address numikrules;
	Address numautolayers;
	Address autolayerindex;
	Address weightlistindex;
	Address posekeyindex;
	Address numiklocks;
	Address iklockindex;
	Address keyvalueindex;
	Address keyvaluesize;
	Address cycleposeindex;
	Address activitymodifierindex;
	Address numactivitymodifiers;
	Address animtagindex;
	Address numanimtags;
	Address rootDriverIndex;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioseqdesc_t::baseptr
		if ((this.baseptr = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::baseptr"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::baseptr' offset.");
		}

		// [offset] mstudioseqdesc_t::szlabelindex
		if ((this.szlabelindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::szlabelindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::szlabelindex' offset.");
		}

		// [offset] mstudioseqdesc_t::szactivitynameindex
		if ((this.szactivitynameindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::szactivitynameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::szactivitynameindex' offset.");
		}

		// [offset] mstudioseqdesc_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::flags' offset.");
		}

		// [offset] mstudioseqdesc_t::activity
		if ((this.activity = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::activity"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::activity' offset.");
		}

		// [offset] mstudioseqdesc_t::actweight
		if ((this.actweight = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::actweight"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::actweight' offset.");
		}

		// [offset] mstudioseqdesc_t::numevents
		if ((this.numevents = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numevents"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numevents' offset.");
		}

		// [offset] mstudioseqdesc_t::eventindex
		if ((this.eventindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::eventindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::eventindex' offset.");
		}

		// [offset] mstudioseqdesc_t::bbmin
		if ((this.bbmin = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::bbmin"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::bbmin' offset.");
		}

		// [offset] mstudioseqdesc_t::bbmax
		if ((this.bbmax = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::bbmax"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::bbmax' offset.");
		}

		// [offset] mstudioseqdesc_t::numblends
		if ((this.numblends = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numblends"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numblends' offset.");
		}

		// [offset] mstudioseqdesc_t::animindexindex
		if ((this.animindexindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::animindexindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::animindexindex' offset.");
		}

		// [offset] mstudioseqdesc_t::movementindex
		if ((this.movementindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::movementindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::movementindex' offset.");
		}

		// [offset] mstudioseqdesc_t::groupsize
		if ((this.groupsize = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::groupsize"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::groupsize' offset.");
		}

		// [offset] mstudioseqdesc_t::paramindex
		if ((this.paramindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::paramindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::paramindex' offset.");
		}

		// [offset] mstudioseqdesc_t::paramstart
		if ((this.paramstart = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::paramstart"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::paramstart' offset.");
		}

		// [offset] mstudioseqdesc_t::paramend
		if ((this.paramend = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::paramend"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::paramend' offset.");
		}

		// [offset] mstudioseqdesc_t::paramparent
		if ((this.paramparent = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::paramparent"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::paramparent' offset.");
		}

		// [offset] mstudioseqdesc_t::fadeintime
		if ((this.fadeintime = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::fadeintime"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::fadeintime' offset.");
		}

		// [offset] mstudioseqdesc_t::fadeouttime
		if ((this.fadeouttime = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::fadeouttime"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::fadeouttime' offset.");
		}

		// [offset] mstudioseqdesc_t::localentrynode
		if ((this.localentrynode = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::localentrynode"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::localentrynode' offset.");
		}

		// [offset] mstudioseqdesc_t::localexitnode
		if ((this.localexitnode = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::localexitnode"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::localexitnode' offset.");
		}

		// [offset] mstudioseqdesc_t::nodeflags
		if ((this.nodeflags = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::nodeflags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::nodeflags' offset.");
		}

		// [offset] mstudioseqdesc_t::entryphase
		if ((this.entryphase = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::entryphase"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::entryphase' offset.");
		}

		// [offset] mstudioseqdesc_t::exitphase
		if ((this.exitphase = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::exitphase"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::exitphase' offset.");
		}

		// [offset] mstudioseqdesc_t::lastframe
		if ((this.lastframe = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::lastframe"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::lastframe' offset.");
		}

		// [offset] mstudioseqdesc_t::nextseq
		if ((this.nextseq = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::nextseq"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::nextseq' offset.");
		}

		// [offset] mstudioseqdesc_t::pose
		if ((this.pose = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::pose"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::pose' offset.");
		}

		// [offset] mstudioseqdesc_t::numikrules
		if ((this.numikrules = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numikrules"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numikrules' offset.");
		}

		// [offset] mstudioseqdesc_t::numautolayers
		if ((this.numautolayers = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numautolayers"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numautolayers' offset.");
		}

		// [offset] mstudioseqdesc_t::autolayerindex
		if ((this.autolayerindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::autolayerindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::autolayerindex' offset.");
		}

		// [offset] mstudioseqdesc_t::weightlistindex
		if ((this.weightlistindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::weightlistindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::weightlistindex' offset.");
		}

		// [offset] mstudioseqdesc_t::posekeyindex
		if ((this.posekeyindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::posekeyindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::posekeyindex' offset.");
		}

		// [offset] mstudioseqdesc_t::numiklocks
		if ((this.numiklocks = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numiklocks"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numiklocks' offset.");
		}

		// [offset] mstudioseqdesc_t::iklockindex
		if ((this.iklockindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::iklockindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::iklockindex' offset.");
		}

		// [offset] mstudioseqdesc_t::keyvalueindex
		if ((this.keyvalueindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::keyvalueindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::keyvalueindex' offset.");
		}

		// [offset] mstudioseqdesc_t::keyvaluesize
		if ((this.keyvaluesize = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::keyvaluesize"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::keyvaluesize' offset.");
		}

		// [offset] mstudioseqdesc_t::cycleposeindex
		if ((this.cycleposeindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::cycleposeindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::cycleposeindex' offset.");
		}

		// [offset] mstudioseqdesc_t::activitymodifierindex
		if ((this.activitymodifierindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::activitymodifierindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::activitymodifierindex' offset.");
		}

		// [offset] mstudioseqdesc_t::numactivitymodifiers
		if ((this.numactivitymodifiers = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numactivitymodifiers"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numactivitymodifiers' offset.");
		}

		// [offset] mstudioseqdesc_t::animtagindex
		if ((this.animtagindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::animtagindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::animtagindex' offset.");
		}

		// [offset] mstudioseqdesc_t::numanimtags
		if ((this.numanimtags = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numanimtags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numanimtags' offset.");
		}

		// [offset] mstudioseqdesc_t::rootDriverIndex
		if ((this.rootDriverIndex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::rootDriverIndex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::rootDriverIndex' offset.");
		}

		// [sizeof] mstudioseqdesc_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioseqdesc_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t' sizeof.");
		}
	}
}

enum struct mstudiobodyparts_t
{
	int size;
	Address sznameindex;
	Address nummodels;
	Address base;
	Address modelindex;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiobodyparts_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudiobodyparts_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobodyparts_t::sznameindex' offset.");
		}

		// [offset] mstudiobodyparts_t::nummodels
		if ((this.nummodels = view_as<Address>(gamedata.GetOffset("mstudiobodyparts_t::nummodels"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobodyparts_t::nummodels' offset.");
		}

		// [offset] mstudiobodyparts_t::base
		if ((this.base = view_as<Address>(gamedata.GetOffset("mstudiobodyparts_t::base"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobodyparts_t::base' offset.");
		}

		// [offset] mstudiobodyparts_t::modelindex
		if ((this.modelindex = view_as<Address>(gamedata.GetOffset("mstudiobodyparts_t::modelindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobodyparts_t::modelindex' offset.");
		}

		// [sizeof] mstudiobodyparts_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiobodyparts_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiobodyparts_t' sizeof.");
		}
	}
}

enum struct mstudioattachment_t
{
	int size;
	Address sznameindex;
	Address flags;
	Address localbone;
	Address local;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioattachment_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudioattachment_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioattachment_t::sznameindex' offset.");
		}

		// [offset] mstudioattachment_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("mstudioattachment_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioattachment_t::flags' offset.");
		}

		// [offset] mstudioattachment_t::localbone
		if ((this.localbone = view_as<Address>(gamedata.GetOffset("mstudioattachment_t::localbone"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioattachment_t::localbone' offset.");
		}

		// [offset] mstudioattachment_t::local
		if ((this.local = view_as<Address>(gamedata.GetOffset("mstudioattachment_t::local"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioattachment_t::local' offset.");
		}

		// [sizeof] mstudioattachment_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioattachment_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioattachment_t' sizeof.");
		}
	}
}

enum struct mstudioflexdesc_t
{
	int size;
	Address szFACSindex;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioflexdesc_t::szFACSindex
		if ((this.szFACSindex = view_as<Address>(gamedata.GetOffset("mstudioflexdesc_t::szFACSindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexdesc_t::szFACSindex' offset.");
		}

		// [sizeof] mstudioflexdesc_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioflexdesc_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioflexdesc_t' sizeof.");
		}
	}
}

enum struct mstudioflexcontroller_t
{
	int size;
	Address sztypeindex;
	Address sznameindex;
	Address localToGlobal;
	Address min;
	Address max;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioflexcontroller_t::sztypeindex
		if ((this.sztypeindex = view_as<Address>(gamedata.GetOffset("mstudioflexcontroller_t::sztypeindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t::sztypeindex' offset.");
		}

		// [offset] mstudioflexcontroller_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudioflexcontroller_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t::sznameindex' offset.");
		}

		// [offset] mstudioflexcontroller_t::localToGlobal
		if ((this.localToGlobal = view_as<Address>(gamedata.GetOffset("mstudioflexcontroller_t::localToGlobal"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t::localToGlobal' offset.");
		}

		// [offset] mstudioflexcontroller_t::min
		if ((this.min = view_as<Address>(gamedata.GetOffset("mstudioflexcontroller_t::min"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t::min' offset.");
		}

		// [offset] mstudioflexcontroller_t::max
		if ((this.max = view_as<Address>(gamedata.GetOffset("mstudioflexcontroller_t::max"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t::max' offset.");
		}

		// [sizeof] mstudioflexcontroller_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioflexcontroller_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t' sizeof.");
		}
	}
}

enum struct mstudioflexrule_t
{
	int size;
	Address flex;
	Address numops;
	Address opindex;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioflexrule_t::flex
		if ((this.flex = view_as<Address>(gamedata.GetOffset("mstudioflexrule_t::flex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexrule_t::flex' offset.");
		}

		// [offset] mstudioflexrule_t::numops
		if ((this.numops = view_as<Address>(gamedata.GetOffset("mstudioflexrule_t::numops"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexrule_t::numops' offset.");
		}

		// [offset] mstudioflexrule_t::opindex
		if ((this.opindex = view_as<Address>(gamedata.GetOffset("mstudioflexrule_t::opindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexrule_t::opindex' offset.");
		}

		// [sizeof] mstudioflexrule_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioflexrule_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioflexrule_t' sizeof.");
		}
	}
}

enum struct mstudioikchain_t
{
	int size;
	Address sznameindex;
	Address linktype;
	Address numlinks;
	Address linkindex;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioikchain_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudioikchain_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioikchain_t::sznameindex' offset.");
		}

		// [offset] mstudioikchain_t::linktype
		if ((this.linktype = view_as<Address>(gamedata.GetOffset("mstudioikchain_t::linktype"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioikchain_t::linktype' offset.");
		}

		// [offset] mstudioikchain_t::numlinks
		if ((this.numlinks = view_as<Address>(gamedata.GetOffset("mstudioikchain_t::numlinks"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioikchain_t::numlinks' offset.");
		}

		// [offset] mstudioikchain_t::linkindex
		if ((this.linkindex = view_as<Address>(gamedata.GetOffset("mstudioikchain_t::linkindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioikchain_t::linkindex' offset.");
		}

		// [sizeof] mstudioikchain_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioikchain_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioikchain_t' sizeof.");
		}
	}
}

enum struct mstudiomouth_t
{
	int size;
	Address bone;
	Address _forward;
	Address flexdesc;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiomouth_t::bone
		if ((this.bone = view_as<Address>(gamedata.GetOffset("mstudiomouth_t::bone"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiomouth_t::bone' offset.");
		}

		// [offset] mstudiomouth_t::forward
		if ((this._forward = view_as<Address>(gamedata.GetOffset("mstudiomouth_t::forward"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiomouth_t::forward' offset.");
		}

		// [offset] mstudiomouth_t::flexdesc
		if ((this.flexdesc = view_as<Address>(gamedata.GetOffset("mstudiomouth_t::flexdesc"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiomouth_t::flexdesc' offset.");
		}

		// [sizeof] mstudiomouth_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiomouth_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiomouth_t' sizeof.");
		}
	}
}

enum struct mstudioposeparamdesc_t
{
	int size;
	Address sznameindex;
	Address flags;
	Address start;
	Address end;
	Address loop;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioposeparamdesc_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudioposeparamdesc_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t::sznameindex' offset.");
		}

		// [offset] mstudioposeparamdesc_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("mstudioposeparamdesc_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t::flags' offset.");
		}

		// [offset] mstudioposeparamdesc_t::start
		if ((this.start = view_as<Address>(gamedata.GetOffset("mstudioposeparamdesc_t::start"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t::start' offset.");
		}

		// [offset] mstudioposeparamdesc_t::end
		if ((this.end = view_as<Address>(gamedata.GetOffset("mstudioposeparamdesc_t::end"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t::end' offset.");
		}

		// [offset] mstudioposeparamdesc_t::loop
		if ((this.loop = view_as<Address>(gamedata.GetOffset("mstudioposeparamdesc_t::loop"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t::loop' offset.");
		}

		// [sizeof] mstudioposeparamdesc_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioposeparamdesc_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t' sizeof.");
		}
	}
}

enum struct mstudiomodelgroup_t
{
	int size;
	Address szlabelindex;
	Address sznameindex;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiomodelgroup_t::szlabelindex
		if ((this.szlabelindex = view_as<Address>(gamedata.GetOffset("mstudiomodelgroup_t::szlabelindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiomodelgroup_t::szlabelindex' offset.");
		}

		// [offset] mstudiomodelgroup_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudiomodelgroup_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiomodelgroup_t::sznameindex' offset.");
		}

		// [sizeof] mstudiomodelgroup_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiomodelgroup_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiomodelgroup_t' sizeof.");
		}
	}
}

enum struct mstudioanimblock_t
{
	int size;
	Address datastart;
	Address dataend;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioanimblock_t::datastart
		if ((this.datastart = view_as<Address>(gamedata.GetOffset("mstudioanimblock_t::datastart"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimblock_t::datastart' offset.");
		}

		// [offset] mstudioanimblock_t::dataend
		if ((this.dataend = view_as<Address>(gamedata.GetOffset("mstudioanimblock_t::dataend"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimblock_t::dataend' offset.");
		}

		// [sizeof] mstudioanimblock_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioanimblock_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioanimblock_t' sizeof.");
		}
	}
}

enum struct mstudioflexcontrollerui_t
{
	int size;
	Address sznameindex;
	Address szindex0;
	Address szindex1;
	Address szindex2;
	Address remaptype;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioflexcontrollerui_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudioflexcontrollerui_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t::sznameindex' offset.");
		}

		// [offset] mstudioflexcontrollerui_t::szindex0
		if ((this.szindex0 = view_as<Address>(gamedata.GetOffset("mstudioflexcontrollerui_t::szindex0"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t::szindex0' offset.");
		}

		// [offset] mstudioflexcontrollerui_t::szindex1
		if ((this.szindex1 = view_as<Address>(gamedata.GetOffset("mstudioflexcontrollerui_t::szindex1"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t::szindex1' offset.");
		}

		// [offset] mstudioflexcontrollerui_t::szindex2
		if ((this.szindex2 = view_as<Address>(gamedata.GetOffset("mstudioflexcontrollerui_t::szindex2"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t::szindex2' offset.");
		}

		// [offset] mstudioflexcontrollerui_t::remaptype
		if ((this.remaptype = view_as<Address>(gamedata.GetOffset("mstudioflexcontrollerui_t::remaptype"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t::remaptype' offset.");
		}

		// [sizeof] mstudioflexcontrollerui_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioflexcontrollerui_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t' sizeof.");
		}
	}
}

// Hold all offsets
enum struct Offsets
{
	// StudioHdr
	studiohdr_t studiohdr_t;
	// Bone
	mstudiobone_t mstudiobone_t;
	// Bone Controller
	mstudiobonecontroller_t mstudiobonecontroller_t;
	// HitBox Set
	mstudiohitboxset_t mstudiohitboxset_t;
	// HitBox
	mstudiobbox_t mstudiobbox_t;
	// Animation
	mstudioanimdesc_t mstudioanimdesc_t;
	// IKLock
	mstudioiklock_t mstudioiklock_t;
	// Sequence
	mstudioseqdesc_t mstudioseqdesc_t;
	// BodyPart
	mstudiobodyparts_t mstudiobodyparts_t;
	// Attachment
	mstudioattachment_t mstudioattachment_t;
	// Flex
	mstudioflexdesc_t mstudioflexdesc_t;
	// Flex Controller
	mstudioflexcontroller_t mstudioflexcontroller_t;
	// Flex Rule
	mstudioflexrule_t mstudioflexrule_t;
	// IKChain
	mstudioikchain_t mstudioikchain_t;
	// Mouth
	mstudiomouth_t mstudiomouth_t;
	// Pose Parameter
	mstudioposeparamdesc_t mstudioposeparamdesc_t;
	// Include Model
	mstudiomodelgroup_t mstudiomodelgroup_t;
	// Animation Block
	mstudioanimblock_t mstudioanimblock_t;
	// Flex Controller UI
	mstudioflexcontrollerui_t mstudioflexcontrollerui_t;

	void LoadOffsets(GameData gamedata)
	{
		this.studiohdr_t.LoadOffsets(gamedata);
		this.mstudiobone_t.LoadOffsets(gamedata);
		this.mstudiobonecontroller_t.LoadOffsets(gamedata);
		this.mstudiohitboxset_t.LoadOffsets(gamedata);
		this.mstudiobbox_t.LoadOffsets(gamedata);
		this.mstudioanimdesc_t.LoadOffsets(gamedata);
		this.mstudioiklock_t.LoadOffsets(gamedata);
		this.mstudioseqdesc_t.LoadOffsets(gamedata);
		this.mstudiobodyparts_t.LoadOffsets(gamedata);
		this.mstudioattachment_t.LoadOffsets(gamedata);
		this.mstudioflexdesc_t.LoadOffsets(gamedata);
		this.mstudioflexcontroller_t.LoadOffsets(gamedata);
		this.mstudioflexrule_t.LoadOffsets(gamedata);
		this.mstudioikchain_t.LoadOffsets(gamedata);
		this.mstudiomouth_t.LoadOffsets(gamedata);
		this.mstudioposeparamdesc_t.LoadOffsets(gamedata);
		this.mstudiomodelgroup_t.LoadOffsets(gamedata);
		this.mstudioanimblock_t.LoadOffsets(gamedata);
		this.mstudioflexcontrollerui_t.LoadOffsets(gamedata);
	}
}
Offsets g_Offsets;

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

// Bone //
enum Bone
{
	NULL_BONE
}

methodmap Bone < AddressObject
{
	public Bone(Address base, int index)
	{
		return view_as<Bone>(base + view_as<Address>(g_Offsets.mstudiobone_t.size * index));
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.sznameindex, NumberType_Int32);
		}
	}
	
	public void GetName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.sznameindex), buffer, buffer_size);
	}

	property int parent
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'parent' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.parent, NumberType_Int32);
		}
	}

	public void get_bonecontroller(int bonecontroller[6])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.bonecontroller, bonecontroller, sizeof(bonecontroller));
	}

	public void get_pos(float pos[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.pos, pos, sizeof(pos));
	}

	public void get_quat(float quat[4])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.quat, quat, sizeof(quat));
	}

	public void get_rot(float rot[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.rot, rot, sizeof(rot));
	}

	public void get_posscale(float posscale[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.posscale, posscale, sizeof(posscale));
	}

	public void get_rotscale(float rotscale[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.rotscale, rotscale, sizeof(rotscale));
	}
	
		public void get_poseToBone(float poseToBone[3][4])
		{
			this.Validate();
			
			for (int current_arr; current_arr < sizeof(poseToBone); current_arr++)
			{
				LoadArrayFromAddress(
					// base + offset + offset of array: array index * (4 variables * 4 bytes)
					view_as<Address>(this) + g_Offsets.mstudiobone_t.poseToBone + view_as<Address>(current_arr * (sizeof(poseToBone[]))),
					// store in the right array.
					poseToBone[current_arr],
					sizeof(poseToBone[])
				);
			}
		}
		

	public void get_qAlignment(float qAlignment[4])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.qAlignment, qAlignment, sizeof(qAlignment));
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.flags, NumberType_Int32);
		}
	}

	property int proctype
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'proctype' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.proctype, NumberType_Int32);
		}
	}

	property int procindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'procindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.procindex, NumberType_Int32);
		}
	}

	property int physicsbone
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'physicsbone' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.physicsbone, NumberType_Int32);
		}
	}

	property int surfacepropidx
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'surfacepropidx' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.surfacepropidx, NumberType_Int32);
		}
	}

	property int contents
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'contents' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.contents, NumberType_Int32);
		}
	}

	property int surfacepropLookup
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'surfacepropLookup' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.surfacepropLookup, NumberType_Int32);
		}
	}
}

// Bone Controller //
enum BoneController
{
	NULL_BONE_CONTROLLER
}

methodmap BoneController < AddressObject
{
	public BoneController(Address base, int index)
	{
		return view_as<BoneController>(base + view_as<Address>(g_Offsets.mstudiobonecontroller_t.size * index));
	}

	property int bone
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bone' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.bone, NumberType_Int32);
		}
	}

	property int type
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'type' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.type, NumberType_Int32);
		}
	}

	property float start
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'start' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.start, NumberType_Int32);
		}
	}

	property float end
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'end' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.end, NumberType_Int32);
		}
	}

	property int rest
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'rest' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.rest, NumberType_Int32);
		}
	}

	property int inputfield
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'inputfield' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.inputfield, NumberType_Int32);
		}
	}
}

// HitBox //
enum HitBox
{
	NULL_HITBOX
}

methodmap HitBox < AddressObject
{
	public HitBox(Address base, int index)
	{
		return view_as<HitBox>(base + view_as<Address>(g_Offsets.mstudiobbox_t.size * index));
	}

	property int bone
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bone' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.bone, NumberType_Int32);
		}
	}

	property int group
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'group' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.group, NumberType_Int32);
		}
	}

	public void get_bbmin(float bbmin[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.bbmin, bbmin, sizeof(bbmin));
	}

	public void get_bbmax(float bbmax[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.bbmax, bbmax, sizeof(bbmax));
	}

	property int szhitboxnameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szhitboxnameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.szhitboxnameindex, NumberType_Int32);
		}
	}

	public void get_angOffsetOrientation(float angOffsetOrientation[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.angOffsetOrientation, angOffsetOrientation, sizeof(angOffsetOrientation));
	}

	property float flCapsuleRadius
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flCapsuleRadius' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.flCapsuleRadius, NumberType_Int32);
		}
	}
}

// HitBox Set //
enum HitBoxSet
{
	NULL_HITBOX_SET
}

methodmap HitBoxSet < AddressObject
{
	public HitBoxSet(Address base, int index)
	{
		return view_as<HitBoxSet>(base + view_as<Address>(g_Offsets.mstudiohitboxset_t.size * index));
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiohitboxset_t.sznameindex, NumberType_Int32);
		}
	}
	
	public void GetName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.sznameindex), buffer, buffer_size);
	}

	property int numhitboxes
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numhitboxes' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiohitboxset_t.numhitboxes, NumberType_Int32);
		}
	}

	property int hitboxindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'hitboxindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiohitboxset_t.hitboxindex, NumberType_Int32);
		}
	}
	
	// Objects [Getters]

	public HitBox GetHitBox(int index)
	{
		this.Validate();

		if (0 <= index < this.numhitboxes)
		{
			return HitBox(view_as<Address>(this) + view_as<Address>(this.hitboxindex), index);
		}

		return NULL_HITBOX;
	}
}

// Animation //
enum Animation
{
	NULL_ANIMATION
}

methodmap Animation < AddressObject
{
	public Animation(Address base, int index)
	{
		return view_as<Animation>(base + view_as<Address>(g_Offsets.mstudioanimdesc_t.size * index));
	}

	property int baseptr
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'baseptr' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.baseptr, NumberType_Int32);
		}
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.sznameindex, NumberType_Int32);
		}
	}

	public void GetName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.sznameindex), buffer, buffer_size);
	}

	property float fps
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'fps' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.fps, NumberType_Int32);
		}
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.flags, NumberType_Int32);
		}
	}

	property int numframes
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numframes' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.numframes, NumberType_Int32);
		}
	}

	property int nummovements
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'nummovements' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.nummovements, NumberType_Int32);
		}
	}

	property int movementindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'movementindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.movementindex, NumberType_Int32);
		}
	}

	property int ikrulezeroframeindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'ikrulezeroframeindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.ikrulezeroframeindex, NumberType_Int32);
		}
	}

	property int animblock
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animblock' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.animblock, NumberType_Int32);
		}
	}

	property int animindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.animindex, NumberType_Int32);
		}
	}

	property int numikrules
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numikrules' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.numikrules, NumberType_Int32);
		}
	}

	property int ikruleindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'ikruleindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.ikruleindex, NumberType_Int32);
		}
	}

	property int animblockikruleindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animblockikruleindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.animblockikruleindex, NumberType_Int32);
		}
	}

	property int numlocalhierarchy
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalhierarchy' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.numlocalhierarchy, NumberType_Int32);
		}
	}

	property int localhierarchyindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localhierarchyindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.localhierarchyindex, NumberType_Int32);
		}
	}

	property int sectionindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sectionindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.sectionindex, NumberType_Int32);
		}
	}

	property int sectionframes
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sectionframes' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.sectionframes, NumberType_Int32);
		}
	}

	property int zeroframespan
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'zeroframespan' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.zeroframespan, NumberType_Int16);
		}
	}

	property int zeroframecount
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'zeroframecount' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.zeroframecount, NumberType_Int16);
		}
	}

	property int zeroframeindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'zeroframeindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.zeroframeindex, NumberType_Int32);
		}
	}

	property float zeroframestalltime
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'zeroframestalltime' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.zeroframestalltime, NumberType_Int32);
		}
	}
}

// IKLock //
enum IKLock
{
	NULL_IKLOCK
}

methodmap IKLock < AddressObject
{
	public IKLock(Address base, int index)
	{
		return view_as<IKLock>(base + view_as<Address>(g_Offsets.mstudioiklock_t.size * index));
	}

	property int chain
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'chain' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioiklock_t.chain, NumberType_Int32);
		}
	}

	property float flPosWeight
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flPosWeight' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioiklock_t.flPosWeight, NumberType_Int32);
		}
	}

	property float flLocalQWeight
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flLocalQWeight' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioiklock_t.flLocalQWeight, NumberType_Int32);
		}
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioiklock_t.flags, NumberType_Int32);
		}
	}
}

// Sequence //
enum Sequence
{
	NULL_SEQUENCE
}

methodmap Sequence < AddressObject
{
	public Sequence(Address base, int index)
	{
		return view_as<Sequence>(base + view_as<Address>(g_Offsets.mstudioseqdesc_t.size * index));
	}

	property int baseptr
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'baseptr' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.baseptr, NumberType_Int32);
		}
	}

	property int szlabelindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szlabelindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.szlabelindex, NumberType_Int32);
		}
	}

	public void GetLabelName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.szlabelindex), buffer, buffer_size);
	}

	property int szactivitynameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szactivitynameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.szactivitynameindex, NumberType_Int32);
		}
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.flags, NumberType_Int32);
		}
	}

	property int activity
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'activity' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.activity, NumberType_Int32);
		}
	}

	property int actweight
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'actweight' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.actweight, NumberType_Int32);
		}
	}

	property int numevents
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numevents' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numevents, NumberType_Int32);
		}
	}

	property int eventindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'eventindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.eventindex, NumberType_Int32);
		}
	}

	public void get_bbmin(float bbmin[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.bbmin, bbmin, sizeof(bbmin));
	}

	public void get_bbmax(float bbmax[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.bbmax, bbmax, sizeof(bbmax));
	}

	property int numblends
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numblends' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numblends, NumberType_Int32);
		}
	}

	property int animindexindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animindexindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.animindexindex, NumberType_Int32);
		}
	}

	property int movementindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'movementindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.movementindex, NumberType_Int32);
		}
	}

	public void get_groupsize(int groupsize[2])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.groupsize, groupsize, sizeof(groupsize));
	}

	public void get_paramindex(int paramindex[2])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.paramindex, paramindex, sizeof(paramindex));
	}

	public void get_paramstart(float paramstart[2])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.paramstart, paramstart, sizeof(paramstart));
	}

	public void get_paramend(float paramend[2])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.paramend, paramend, sizeof(paramend));
	}

	property int paramparent
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'paramparent' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.paramparent, NumberType_Int32);
		}
	}

	property float fadeintime
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'fadeintime' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.fadeintime, NumberType_Int32);
		}
	}

	property float fadeouttime
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'fadeouttime' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.fadeouttime, NumberType_Int32);
		}
	}

	property int localentrynode
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localentrynode' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.localentrynode, NumberType_Int32);
		}
	}

	property int localexitnode
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localexitnode' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.localexitnode, NumberType_Int32);
		}
	}

	property int nodeflags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'nodeflags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.nodeflags, NumberType_Int32);
		}
	}

	property float entryphase
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'entryphase' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.entryphase, NumberType_Int32);
		}
	}

	property float exitphase
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'exitphase' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.exitphase, NumberType_Int32);
		}
	}

	property float lastframe
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'lastframe' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.lastframe, NumberType_Int32);
		}
	}

	property int nextseq
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'nextseq' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.nextseq, NumberType_Int32);
		}
	}

	property int pose
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'pose' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.pose, NumberType_Int32);
		}
	}

	property int numikrules
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numikrules' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numikrules, NumberType_Int32);
		}
	}

	property int numautolayers
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numautolayers' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numautolayers, NumberType_Int32);
		}
	}

	property int autolayerindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'autolayerindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.autolayerindex, NumberType_Int32);
		}
	}

	property int weightlistindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'weightlistindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.weightlistindex, NumberType_Int32);
		}
	}

	property int posekeyindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'posekeyindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.posekeyindex, NumberType_Int32);
		}
	}

	property int numiklocks
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numiklocks' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numiklocks, NumberType_Int32);
		}
	}

	property int iklockindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'iklockindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.iklockindex, NumberType_Int32);
		}
	}

	property int keyvalueindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'keyvalueindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.keyvalueindex, NumberType_Int32);
		}
	}

	property int keyvaluesize
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'keyvaluesize' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.keyvaluesize, NumberType_Int32);
		}
	}

	property int cycleposeindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'cycleposeindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.cycleposeindex, NumberType_Int32);
		}
	}

	property int activitymodifierindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'activitymodifierindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.activitymodifierindex, NumberType_Int32);
		}
	}

	property int numactivitymodifiers
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numactivitymodifiers' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numactivitymodifiers, NumberType_Int32);
		}
	}

	property int animtagindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animtagindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.animtagindex, NumberType_Int32);
		}
	}

	property int numanimtags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numanimtags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numanimtags, NumberType_Int32);
		}
	}

	property int rootDriverIndex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'rootDriverIndex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.rootDriverIndex, NumberType_Int32);
		}
	}

	public IKLock GetIKLock(int index)
	{
		this.Validate();

		if (0 <= index < this.numiklocks)
		{
			return IKLock(view_as<Address>(this) + view_as<Address>(this.iklockindex), index);
		}

		return NULL_IKLOCK;
	}
}

// BodyPart //
enum BodyPart
{
	NULL_BODYPART
}

methodmap BodyPart < AddressObject
{
	public BodyPart(Address base, int index)
	{
		return view_as<BodyPart>(base + view_as<Address>(g_Offsets.mstudiobodyparts_t.size * index));
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobodyparts_t.sznameindex, NumberType_Int32);
		}
	}

	public void GetName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.sznameindex), buffer, buffer_size);
	}

	property int nummodels
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'nummodels' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobodyparts_t.nummodels, NumberType_Int32);
		}
	}

	property int base
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'base' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobodyparts_t.base, NumberType_Int32);
		}
	}

	property int modelindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'modelindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobodyparts_t.modelindex, NumberType_Int32);
		}
	}
}

// Attachment //
enum Attachment
{
	NULL_ATTACHMENT
}

methodmap Attachment < AddressObject
{
	public Attachment(Address base, int index)
	{
		return view_as<Attachment>(base + view_as<Address>(g_Offsets.mstudioattachment_t.size * index));
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioattachment_t.sznameindex, NumberType_Int32);
		}
	}

	public void GetName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.sznameindex), buffer, buffer_size);
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioattachment_t.flags, NumberType_Int32);
		}
	}

	property int localbone
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localbone' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioattachment_t.localbone, NumberType_Int32);
		}
	}

	public void get_local(float local[3][4])
	{
		this.Validate();
		
		for (int current_arr; current_arr < sizeof(local); current_arr++)
		{
			LoadArrayFromAddress(
				// base + offset + offset of array: array index * (4 variables * 4 bytes)
				view_as<Address>(this) + g_Offsets.mstudioattachment_t.local + view_as<Address>(current_arr * (sizeof(local[]) * 4)),
				// store in the right array.
				local[current_arr],
				sizeof(local[])
			);
		}
	}
}

// Flex //
enum Flex
{
	NULL_FLEX
}

methodmap Flex < AddressObject
{
	public Flex(Address base, int index)
	{
		return view_as<Flex>(base + view_as<Address>(g_Offsets.mstudioflexdesc_t.size * index));
	}

	property int szFACSindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szFACSindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexdesc_t.szFACSindex, NumberType_Int32);
		}
	}
}

// Flex Controller //
enum FlexController
{
	NULL_FLEX_CONTROLLER
}

methodmap FlexController < AddressObject
{
	public FlexController(Address base, int index)
	{
		return view_as<FlexController>(base + view_as<Address>(g_Offsets.mstudioflexcontroller_t.size * index));
	}

	property int sztypeindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sztypeindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontroller_t.sztypeindex, NumberType_Int32);
		}
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontroller_t.sznameindex, NumberType_Int32);
		}
	}

	public void GetName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.sznameindex), buffer, buffer_size);
	}

	property int localToGlobal
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localToGlobal' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontroller_t.localToGlobal, NumberType_Int32);
		}
	}

	property float min
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'min' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontroller_t.min, NumberType_Int32);
		}
	}

	property float max
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'max' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontroller_t.max, NumberType_Int32);
		}
	}
}

// Flex Rule //
enum FlexRule
{
	NULL_FLEX_RULE
}

methodmap FlexRule < AddressObject
{
	public FlexRule(Address base, int index)
	{
		return view_as<FlexRule>(base + view_as<Address>(g_Offsets.mstudioflexrule_t.size * index));
	}

	property int flex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexrule_t.flex, NumberType_Int32);
		}
	}

	property int numops
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numops' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexrule_t.numops, NumberType_Int32);
		}
	}

	property int opindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'opindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexrule_t.opindex, NumberType_Int32);
		}
	}
}

// IKChain //
enum IKChain
{
	NULL_IKCHAIN
}

methodmap IKChain < AddressObject
{
	public IKChain(Address base, int index)
	{
		return view_as<IKChain>(base + view_as<Address>(g_Offsets.mstudioikchain_t.size * index));
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioikchain_t.sznameindex, NumberType_Int32);
		}
	}

	public void GetName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.sznameindex), buffer, buffer_size);
	}

	property int linktype
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'linktype' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioikchain_t.linktype, NumberType_Int32);
		}
	}

	property int numlinks
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlinks' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioikchain_t.numlinks, NumberType_Int32);
		}
	}

	property int linkindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'linkindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioikchain_t.linkindex, NumberType_Int32);
		}
	}
}

// Mouth //
enum Mouth
{
	NULL_MOUTH
}

methodmap Mouth < AddressObject
{
	public Mouth(Address base, int index)
	{
		return view_as<Mouth>(base + view_as<Address>(g_Offsets.mstudiomouth_t.size * index));
	}

	property int bone
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bone' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiomouth_t.bone, NumberType_Int32);
		}
	}

	public void get_forward(float _forward[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiomouth_t._forward, _forward, sizeof(_forward));
	}

	property int flexdesc
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flexdesc' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiomouth_t.flexdesc, NumberType_Int32);
		}
	}

}

// Pose Parameter //
enum PoseParameter
{
	NULL_POSE_PARAMETER
}

methodmap PoseParameter < AddressObject
{
	public PoseParameter(Address base, int index)
	{
		return view_as<PoseParameter>(base + view_as<Address>(g_Offsets.mstudioposeparamdesc_t.size * index));
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioposeparamdesc_t.sznameindex, NumberType_Int32);
		}
	}

	public void GetName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.sznameindex), buffer, buffer_size);
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioposeparamdesc_t.flags, NumberType_Int32);
		}
	}

	property float start
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'start' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioposeparamdesc_t.start, NumberType_Int32);
		}
	}

	property float end
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'end' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioposeparamdesc_t.end, NumberType_Int32);
		}
	}

	property float loop
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'loop' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioposeparamdesc_t.loop, NumberType_Int32);
		}
	}
}

// Include Model //
enum IncludeModel
{
	NULL_INCLUDE_MODEL
}

methodmap IncludeModel < AddressObject
{
	public IncludeModel(Address base, int index)
	{
		return view_as<IncludeModel>(base + view_as<Address>(g_Offsets.mstudiomodelgroup_t.size * index));
	}

	property int szlabelindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szlabelindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiomodelgroup_t.szlabelindex, NumberType_Int32);
		}
	}

	public void GetLabelName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.szlabelindex), buffer, buffer_size);
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiomodelgroup_t.sznameindex, NumberType_Int32);
		}
	}

	public void GetName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.sznameindex), buffer, buffer_size);
	}
}

// Animation Block //
enum AnimationBlock
{
	NULL_ANIMATION_BLOCK
}

methodmap AnimationBlock < AddressObject
{
	public AnimationBlock(Address base, int index)
	{
		return view_as<AnimationBlock>(base + view_as<Address>(g_Offsets.mstudioanimblock_t.size * index));
	}

	property int datastart
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'datastart' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimblock_t.datastart, NumberType_Int32);
		}
	}

	property int dataend
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'dataend' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimblock_t.dataend, NumberType_Int32);
		}
	}

}

// Flex Controller UI //
enum FlexControllerUI
{
	NULL_FLEX_CONTROLLER_UI
}

methodmap FlexControllerUI < AddressObject
{
	public FlexControllerUI(Address base, int index)
	{
		return view_as<FlexControllerUI>(base + view_as<Address>(g_Offsets.mstudioflexcontrollerui_t.size * index));
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontrollerui_t.sznameindex, NumberType_Int32);
		}
	}

	public void GetName(char[] buffer, int buffer_size)
	{
		this.Validate();
		
		LoadStringFromAddress(view_as<Address>(this) + view_as<Address>(this.sznameindex), buffer, buffer_size);
	}

	property int szindex0
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szindex0' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontrollerui_t.szindex0, NumberType_Int32);
		}
	}

	property int szindex1
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szindex1' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontrollerui_t.szindex1, NumberType_Int32);
		}
	}

	property int szindex2
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szindex2' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontrollerui_t.szindex2, NumberType_Int32);
		}
	}

	property char remaptype
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'remaptype' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontrollerui_t.remaptype, NumberType_Int8);
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
		if (!model_path[0])
		{
			return NULL_STUDIO_HDR;
		}
		
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

	// Offsets

	property int id
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'id' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.id, NumberType_Int32);
		}
	}

	property int version
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'version' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.version, NumberType_Int32);
		}
	}

	property int checksum
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'checksum' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.checksum, NumberType_Int32);
		}
	}

	property int length
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'length' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.length, NumberType_Int32);
		}
	}

	public void get_eyeposition(float eyeposition[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.eyeposition, eyeposition, sizeof(eyeposition));
	}

	public void get_illumposition(float illumposition[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.illumposition, illumposition, sizeof(illumposition));
	}

	public void get_hull_min(float hull_min[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.hull_min, hull_min, sizeof(hull_min));
	}

	public void get_hull_max(float hull_max[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.hull_max, hull_max, sizeof(hull_max));
	}

	public void get_view_bbmin(float view_bbmin[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.view_bbmin, view_bbmin, sizeof(view_bbmin));
	}

	public void get_view_bbmax(float view_bbmax[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.view_bbmax, view_bbmax, sizeof(view_bbmax));
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flags, NumberType_Int32);
		}
	}

	property int numbones
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numbones' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numbones, NumberType_Int32);
		}
	}

	property int boneindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'boneindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.boneindex, NumberType_Int32);
		}
	}

	property int numbonecontrollers
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numbonecontrollers' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numbonecontrollers, NumberType_Int32);
		}
	}

	property int bonecontrollerindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bonecontrollerindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.bonecontrollerindex, NumberType_Int32);
		}
	}

	property int numhitboxsets
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numhitboxsets' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numhitboxsets, NumberType_Int32);
		}
	}

	property int hitboxsetindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'hitboxsetindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.hitboxsetindex, NumberType_Int32);
		}
	}

	property int numlocalanim
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalanim' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalanim, NumberType_Int32);
		}
	}

	property int localanimindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localanimindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localanimindex, NumberType_Int32);
		}
	}

	property int numlocalseq
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalseq' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalseq, NumberType_Int32);
		}
	}

	property int localseqindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localseqindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localseqindex, NumberType_Int32);
		}
	}

	property int activitylistversion
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'activitylistversion' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.activitylistversion, NumberType_Int32);
		}
	}

	property int eventsindexed
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'eventsindexed' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.eventsindexed, NumberType_Int32);
		}
	}

	property int numtextures
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numtextures' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numtextures, NumberType_Int32);
		}
	}

	property int textureindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'textureindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.textureindex, NumberType_Int32);
		}
	}

	property int numcdtextures
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numcdtextures' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numcdtextures, NumberType_Int32);
		}
	}

	property int cdtextureindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'cdtextureindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.cdtextureindex, NumberType_Int32);
		}
	}

	property int numskinref
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numskinref' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numskinref, NumberType_Int32);
		}
	}

	property int numskinfamilies
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numskinfamilies' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numskinfamilies, NumberType_Int32);
		}
	}

	property int skinindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'skinindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.skinindex, NumberType_Int32);
		}
	}

	property int numbodyparts
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numbodyparts' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numbodyparts, NumberType_Int32);
		}
	}

	property int bodypartindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bodypartindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.bodypartindex, NumberType_Int32);
		}
	}

	property int numlocalattachments
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalattachments' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalattachments, NumberType_Int32);
		}
	}

	property int localattachmentindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localattachmentindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localattachmentindex, NumberType_Int32);
		}
	}

	property int numlocalnodes
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalnodes' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalnodes, NumberType_Int32);
		}
	}

	property int localnodeindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localnodeindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localnodeindex, NumberType_Int32);
		}
	}

	property int localnodenameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localnodenameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localnodenameindex, NumberType_Int32);
		}
	}

	property int numflexdesc
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numflexdesc' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numflexdesc, NumberType_Int32);
		}
	}

	property int flexdescindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flexdescindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flexdescindex, NumberType_Int32);
		}
	}

	property int numflexcontrollers
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numflexcontrollers' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numflexcontrollers, NumberType_Int32);
		}
	}

	property int flexcontrollerindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flexcontrollerindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flexcontrollerindex, NumberType_Int32);
		}
	}

	property int numflexrules
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numflexrules' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numflexrules, NumberType_Int32);
		}
	}

	property int flexruleindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flexruleindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flexruleindex, NumberType_Int32);
		}
	}

	property int numikchains
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numikchains' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numikchains, NumberType_Int32);
		}
	}

	property int ikchainindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'ikchainindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.ikchainindex, NumberType_Int32);
		}
	}

	property int nummouths
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'nummouths' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.nummouths, NumberType_Int32);
		}
	}

	property int mouthindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'mouthindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.mouthindex, NumberType_Int32);
		}
	}

	property int numlocalposeparameters
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalposeparameters' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalposeparameters, NumberType_Int32);
		}
	}

	property int localposeparamindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localposeparamindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localposeparamindex, NumberType_Int32);
		}
	}

	property int surfacepropindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'surfacepropindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.surfacepropindex, NumberType_Int32);
		}
	}

	property int keyvalueindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'keyvalueindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.keyvalueindex, NumberType_Int32);
		}
	}

	property int keyvaluesize
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'keyvaluesize' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.keyvaluesize, NumberType_Int32);
		}
	}

	property int numlocalikautoplaylocks
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalikautoplaylocks' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalikautoplaylocks, NumberType_Int32);
		}
	}

	property int localikautoplaylockindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localikautoplaylockindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localikautoplaylockindex, NumberType_Int32);
		}
	}

	property float mass
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'mass' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.mass, NumberType_Int32);
		}
	}

	property int contents
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'contents' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.contents, NumberType_Int32);
		}
	}

	property int numincludemodels
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numincludemodels' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numincludemodels, NumberType_Int32);
		}
	}

	property int includemodelindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'includemodelindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.includemodelindex, NumberType_Int32);
		}
	}

	property int szanimblocknameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szanimblocknameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.szanimblocknameindex, NumberType_Int32);
		}
	}

	property int numanimblocks
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numanimblocks' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numanimblocks, NumberType_Int32);
		}
	}

	property int animblockindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animblockindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.animblockindex, NumberType_Int32);
		}
	}

	property int bonetablebynameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bonetablebynameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.bonetablebynameindex, NumberType_Int32);
		}
	}

	property int constdirectionallightdot
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'constdirectionallightdot' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.constdirectionallightdot, NumberType_Int8);
		}
	}

	property int rootLOD
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'rootLOD' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.rootLOD, NumberType_Int8);
		}
	}

	property int numAllowedRootLODs
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numAllowedRootLODs' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numAllowedRootLODs, NumberType_Int8);
		}
	}

	property int numflexcontrollerui
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numflexcontrollerui' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numflexcontrollerui, NumberType_Int32);
		}
	}

	property int flexcontrolleruiindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flexcontrolleruiindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flexcontrolleruiindex, NumberType_Int32);
		}
	}

	property float flVertAnimFixedPointScale
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flVertAnimFixedPointScale' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flVertAnimFixedPointScale, NumberType_Int32);
		}
	}

	property int surfacepropLookup
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'surfacepropLookup' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.surfacepropLookup, NumberType_Int32);
		}
	}

	property int studiohdr2index
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'studiohdr2index' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.studiohdr2index, NumberType_Int32);
		}
	}

	// Objects [Getters]

	public Bone GetBone(int index)
	{
		this.Validate();

		if (0 <= index < this.numbones)
		{
			return Bone(view_as<Address>(this) + view_as<Address>(this.boneindex), index);
		}

		return NULL_BONE;
	}

	public BoneController GetBoneController(int index)
	{
		this.Validate();

		if (0 <= index < this.numbonecontrollers)
		{
			return BoneController(view_as<Address>(this) + view_as<Address>(this.bonecontrollerindex), index);
		}

		return NULL_BONE_CONTROLLER;
	}

	public HitBoxSet GetHitBoxSet(int index)
	{
		this.Validate();

		if (0 <= index < this.numhitboxsets)
		{
			return HitBoxSet(view_as<Address>(this) + view_as<Address>(this.hitboxsetindex), index);
		}

		return NULL_HITBOX_SET;
	}

	public HitBox GetHitBox(int hitbox_set_index, int hitbox_index)
	{
		this.Validate();

		HitBoxSet hitbox_set = this.GetHitBoxSet(hitbox_set_index);
		if (hitbox_set != NULL_HITBOX_SET && (0 <= hitbox_index < hitbox_set.numhitboxes))
		{
			return hitbox_set.GetHitBox(hitbox_index);
		}

		return NULL_HITBOX;
	}

	public Animation GetAnimation(int index)
	{
		this.Validate();

		if (0 <= index < this.numlocalanim)
		{
			return Animation(view_as<Address>(this) + view_as<Address>(this.localanimindex), index);
		}

		return NULL_ANIMATION;
	}
	
	public Sequence GetSequence(int index)
	{
		this.Validate();

		if (0 <= index < this.numlocalseq)
		{
			return Sequence(view_as<Address>(this) + view_as<Address>(this.localseqindex), index);
		}

		return NULL_SEQUENCE;
	}

	public BodyPart GetBodyPart(int index)
	{
		this.Validate();

		if (0 <= index < this.numbodyparts)
		{
			return BodyPart(view_as<Address>(this) + view_as<Address>(this.bodypartindex), index);
		}

		return NULL_BODYPART;
	}

	public Attachment GetAttachment(int index)
	{
		this.Validate();

		if (0 <= index < this.numlocalattachments)
		{
			return Attachment(view_as<Address>(this) + view_as<Address>(this.localattachmentindex), index);
		}

		return NULL_ATTACHMENT;
	}

	public Flex GetFlex(int index)
	{
		this.Validate();

		if (0 <= index < this.numflexdesc)
		{
			return Flex(view_as<Address>(this) + view_as<Address>(this.flexdescindex), index);
		}

		return NULL_FLEX;
	}

	public FlexController GetFlexController(int index)
	{
		this.Validate();

		if (0 <= index < this.numflexcontrollers)
		{
			return FlexController(view_as<Address>(this) + view_as<Address>(this.flexcontrollerindex), index);
		}

		return NULL_FLEX_CONTROLLER;
	}

	public FlexRule GetFlexRule(int index)
	{
		this.Validate();

		if (0 <= index < this.numflexrules)
		{
			return FlexRule(view_as<Address>(this) + view_as<Address>(this.flexruleindex), index);
		}

		return NULL_FLEX_RULE;
	}

	public IKChain GetIKChain(int index)
	{
		this.Validate();

		if (0 <= index < this.numikchains)
		{
			return IKChain(view_as<Address>(this) + view_as<Address>(this.ikchainindex), index);
		}

		return NULL_IKCHAIN;
	}

	public Mouth GetMouth(int index)
	{
		this.Validate();

		if (0 <= index < this.nummouths)
		{
			return Mouth(view_as<Address>(this) + view_as<Address>(this.mouthindex), index);
		}

		return NULL_MOUTH;
	}

	public PoseParameter GetPoseParameter(int index)
	{
		this.Validate();

		if (0 <= index < this.numlocalposeparameters)
		{
			return PoseParameter(view_as<Address>(this) + view_as<Address>(this.localposeparamindex), index);
		}

		return NULL_POSE_PARAMETER;
	}

	public IncludeModel GetIncludeModel(int index)
	{
		this.Validate();

		if (0 <= index < this.numincludemodels)
		{
			return IncludeModel(view_as<Address>(this) + view_as<Address>(this.includemodelindex), index);
		}

		return NULL_INCLUDE_MODEL;
	}

	public AnimationBlock GetAnimationBlock(int index)
	{
		this.Validate();

		if (0 <= index < this.numanimblocks)
		{
			return AnimationBlock(view_as<Address>(this) + view_as<Address>(this.animblockindex), index);
		}

		return NULL_ANIMATION_BLOCK;
	}

	public FlexControllerUI GetFlexControllerUI(int index)
	{
		this.Validate();

		if (0 <= index < this.numflexcontrollerui)
		{
			return FlexControllerUI(view_as<Address>(this) + view_as<Address>(this.flexcontrolleruiindex), index);
		}

		return NULL_FLEX_CONTROLLER_UI;
	}
	
	// Objects [Find By Name]
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

	// Load structs offsets:
	g_Offsets.LoadOffsets(gamedata);

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
