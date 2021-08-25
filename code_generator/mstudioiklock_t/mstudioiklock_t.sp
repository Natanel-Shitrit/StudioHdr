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
// mstudioiklock_t mstudioiklock_t;

// mstudioiklock_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudioiklock_t.size * index)
		);
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

	public void get_unused(int unused[4])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioiklock_t.unused, unused, sizeof(unused));
	}

}

// test

PrintToServer("chain: %i", studio_hdr.chain);

PrintToServer("flPosWeight: %f", studio_hdr.flPosWeight);

PrintToServer("flLocalQWeight: %f", studio_hdr.flLocalQWeight);

PrintToServer("flags: %i", studio_hdr.flags);

int unused[4];
studio_hdr.get_unused(unused);
PrintToServer("unused: %i %i %i %i ", unused[0], unused[1], unused[2], unused[3]);

