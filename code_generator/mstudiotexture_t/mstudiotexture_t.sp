enum struct mstudiotexture_t
{
	int size;
	Address sznameindex;
	Address flags;
	Address used;
	Address unused1;
	Address unused;
	Address unused;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiotexture_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudiotexture_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiotexture_t::sznameindex' offset.");
		}

		// [offset] mstudiotexture_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("mstudiotexture_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiotexture_t::flags' offset.");
		}

		// [offset] mstudiotexture_t::used
		if ((this.used = view_as<Address>(gamedata.GetOffset("mstudiotexture_t::used"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiotexture_t::used' offset.");
		}

		// [offset] mstudiotexture_t::unused1
		if ((this.unused1 = view_as<Address>(gamedata.GetOffset("mstudiotexture_t::unused1"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiotexture_t::unused1' offset.");
		}

		// [offset] mstudiotexture_t::unused
		if ((this.unused = view_as<Address>(gamedata.GetOffset("mstudiotexture_t::unused"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiotexture_t::unused' offset.");
		}

		// [offset] mstudiotexture_t::unused
		if ((this.unused = view_as<Address>(gamedata.GetOffset("mstudiotexture_t::unused"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiotexture_t::unused' offset.");
		}

		// [sizeof] mstudiotexture_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiotexture_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiotexture_t' sizeof.");
		}
	}
}
// mstudiotexture_t mstudiotexture_t;

// mstudiotexture_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudiotexture_t.size * index)
		);
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiotexture_t.sznameindex, NumberType_Int32);
		}
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiotexture_t.flags, NumberType_Int32);
		}
	}

	property int used
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'used' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiotexture_t.used, NumberType_Int32);
		}
	}

	property int unused1
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'unused1' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiotexture_t.unused1, NumberType_Int32);
		}
	}

	public void get_unused(int unused[12])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiotexture_t.unused, unused, sizeof(unused));
	}

	public void get_unused(int unused[10])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiotexture_t.unused, unused, sizeof(unused));
	}

}

// test

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

PrintToServer("flags: %i", studio_hdr.flags);

PrintToServer("used: %i", studio_hdr.used);

PrintToServer("unused1: %i", studio_hdr.unused1);

int unused[12];
studio_hdr.get_unused(unused);
PrintToServer("unused: %i %i %i %i %i %i %i %i %i %i %i %i ", unused[0], unused[1], unused[2], unused[3], unused[4], unused[5], unused[6], unused[7], unused[8], unused[9], unused[10], unused[11]);

int unused[10];
studio_hdr.get_unused(unused);
PrintToServer("unused: %i %i %i %i %i %i %i %i %i %i ", unused[0], unused[1], unused[2], unused[3], unused[4], unused[5], unused[6], unused[7], unused[8], unused[9]);

