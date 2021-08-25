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
// mstudioflexdesc_t mstudioflexdesc_t;

// mstudioflexdesc_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudioflexdesc_t.size * index)
		);
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

// test

PrintToServer("szFACSindex: %i", studio_hdr.szFACSindex);

