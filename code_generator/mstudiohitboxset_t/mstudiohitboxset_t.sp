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
// mstudiohitboxset_t mstudiohitboxset_t;

// mstudiohitboxset_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudiohitboxset_t.size * index)
		);
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
}

// test

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

PrintToServer("numhitboxes: %i", studio_hdr.numhitboxes);

PrintToServer("hitboxindex: %i", studio_hdr.hitboxindex);

