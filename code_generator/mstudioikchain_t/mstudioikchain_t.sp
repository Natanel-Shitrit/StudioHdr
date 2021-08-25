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
// mstudioikchain_t mstudioikchain_t;

// mstudioikchain_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudioikchain_t.size * index)
		);
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

// test

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

PrintToServer("linktype: %i", studio_hdr.linktype);

PrintToServer("numlinks: %i", studio_hdr.numlinks);

PrintToServer("linkindex: %i", studio_hdr.linkindex);

