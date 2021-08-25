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
// mstudiobodyparts_t mstudiobodyparts_t;

// mstudiobodyparts_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudiobodyparts_t.size * index)
		);
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

// test

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

PrintToServer("nummodels: %i", studio_hdr.nummodels);

PrintToServer("base: %i", studio_hdr.base);

PrintToServer("modelindex: %i", studio_hdr.modelindex);

