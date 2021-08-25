enum struct mstudioflexcontroller_t
{
	int size;
	Address sztypeindex;
	Address sznameindex;
	Address localToGlobal;
	Address min;
	Address max;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioflexcontroller_t::sztypeindex
		if ((this.sztypeindex = view_as<Address>(gamedata.GetOffset("mstudioflexcontroller_t::sztypeindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t::sztypeindex' offset.");
		}

		// [offset] mstudioflexcontroller_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudioflexcontroller_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t::sznameindex' offset.");
		}

		// [offset] mstudioflexcontroller_t::localToGlobal
		if ((this.localToGlobal = view_as<Address>(gamedata.GetOffset("mstudioflexcontroller_t::localToGlobal"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t::localToGlobal' offset.");
		}

		// [offset] mstudioflexcontroller_t::min
		if ((this.min = view_as<Address>(gamedata.GetOffset("mstudioflexcontroller_t::min"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t::min' offset.");
		}

		// [offset] mstudioflexcontroller_t::max
		if ((this.max = view_as<Address>(gamedata.GetOffset("mstudioflexcontroller_t::max"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t::max' offset.");
		}

		// [sizeof] mstudioflexcontroller_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioflexcontroller_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioflexcontroller_t' sizeof.");
		}
	}
}
// mstudioflexcontroller_t mstudioflexcontroller_t;

// mstudioflexcontroller_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudioflexcontroller_t.size * index)
		);
	}

	property int sztypeindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sztypeindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontroller_t.sztypeindex, NumberType_Int32);
		}
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontroller_t.sznameindex, NumberType_Int32);
		}
	}

	property int localToGlobal
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localToGlobal' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontroller_t.localToGlobal, NumberType_Int32);
		}
	}

	property float min
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'min' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontroller_t.min, NumberType_Int32);
		}
	}

	property float max
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'max' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontroller_t.max, NumberType_Int32);
		}
	}
}

// test

PrintToServer("sztypeindex: %i", studio_hdr.sztypeindex);

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

PrintToServer("localToGlobal: %i", studio_hdr.localToGlobal);

PrintToServer("min: %f", studio_hdr.min);

PrintToServer("max: %f", studio_hdr.max);

