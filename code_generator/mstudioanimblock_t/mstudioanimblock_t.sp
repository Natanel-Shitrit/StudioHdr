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
// mstudioanimblock_t mstudioanimblock_t;

// mstudioanimblock_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudioanimblock_t.size * index)
		);
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

// test

PrintToServer("datastart: %i", studio_hdr.datastart);

PrintToServer("dataend: %i", studio_hdr.dataend);

