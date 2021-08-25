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
// mstudioflexrule_t mstudioflexrule_t;

// mstudioflexrule_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudioflexrule_t.size * index)
		);
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

// test

PrintToServer("flex: %i", studio_hdr.flex);

PrintToServer("numops: %i", studio_hdr.numops);

PrintToServer("opindex: %i", studio_hdr.opindex);

