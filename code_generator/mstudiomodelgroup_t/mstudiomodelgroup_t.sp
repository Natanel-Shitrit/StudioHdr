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
// mstudiomodelgroup_t mstudiomodelgroup_t;

// mstudiomodelgroup_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudiomodelgroup_t.size * index)
		);
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

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiomodelgroup_t.sznameindex, NumberType_Int32);
		}
	}

}

// test

PrintToServer("szlabelindex: %i", studio_hdr.szlabelindex);

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

