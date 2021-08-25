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
// mstudioattachment_t mstudioattachment_t;

// mstudioattachment_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudioattachment_t.size * index)
		);
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

	//public void get_local(float local[3][4])
	//{
	//	this.Validate();
	//	
	//	LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioattachment_t.local, local, sizeof(local));
	//}
}

// test

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

PrintToServer("flags: %i", studio_hdr.flags);

PrintToServer("localbone: %i", studio_hdr.localbone);

float local[3][4];
studio_hdr.get_local(local);
PrintToServer("local: %f %f %f %f %f %f %f %f %f %f %f %f ", local[0], local[1], local[2], local[3], local[4], local[5], local[6], local[7], local[8], local[9], local[10], local[11]);

int unused[8];
studio_hdr.get_unused(unused);
PrintToServer("unused: %i %i %i %i %i %i %i %i ", unused[0], unused[1], unused[2], unused[3], unused[4], unused[5], unused[6], unused[7]);

