enum struct mstudioflexcontrollerui_t
{
	int size;
	Address sznameindex;
	Address szindex0;
	Address szindex1;
	Address szindex2;
	Address remaptype;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioflexcontrollerui_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudioflexcontrollerui_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t::sznameindex' offset.");
		}

		// [offset] mstudioflexcontrollerui_t::szindex0
		if ((this.szindex0 = view_as<Address>(gamedata.GetOffset("mstudioflexcontrollerui_t::szindex0"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t::szindex0' offset.");
		}

		// [offset] mstudioflexcontrollerui_t::szindex1
		if ((this.szindex1 = view_as<Address>(gamedata.GetOffset("mstudioflexcontrollerui_t::szindex1"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t::szindex1' offset.");
		}

		// [offset] mstudioflexcontrollerui_t::szindex2
		if ((this.szindex2 = view_as<Address>(gamedata.GetOffset("mstudioflexcontrollerui_t::szindex2"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t::szindex2' offset.");
		}

		// [offset] mstudioflexcontrollerui_t::remaptype
		if ((this.remaptype = view_as<Address>(gamedata.GetOffset("mstudioflexcontrollerui_t::remaptype"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t::remaptype' offset.");
		}

		// [offset] mstudioflexcontrollerui_t::unused
		if ((this.unused = view_as<Address>(gamedata.GetOffset("mstudioflexcontrollerui_t::unused"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t::unused' offset.");
		}

		// [sizeof] mstudioflexcontrollerui_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioflexcontrollerui_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioflexcontrollerui_t' sizeof.");
		}
	}
}
// mstudioflexcontrollerui_t mstudioflexcontrollerui_t;

// mstudioflexcontrollerui_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudioflexcontrollerui_t.size * index)
		);
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontrollerui_t.sznameindex, NumberType_Int32);
		}
	}

	property int szindex0
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szindex0' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontrollerui_t.szindex0, NumberType_Int32);
		}
	}

	property int szindex1
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szindex1' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontrollerui_t.szindex1, NumberType_Int32);
		}
	}

	property int szindex2
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szindex2' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontrollerui_t.szindex2, NumberType_Int32);
		}
	}

	property char remaptype
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'remaptype' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioflexcontrollerui_t.remaptype, NumberType_Int8);
		}
	}
}

// test

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

PrintToServer("szindex0: %i", studio_hdr.szindex0);

PrintToServer("szindex1: %i", studio_hdr.szindex1);

PrintToServer("szindex2: %i", studio_hdr.szindex2);

PrintToServer("remaptype: %c", studio_hdr.remaptype);

int unused[2];
studio_hdr.get_unused(unused);
PrintToServer("unused: %i %i ", unused[0], unused[1]);

