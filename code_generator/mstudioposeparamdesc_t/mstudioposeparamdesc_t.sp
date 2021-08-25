enum struct mstudioposeparamdesc_t
{
	int size;
	Address sznameindex;
	Address flags;
	Address start;
	Address end;
	Address loop;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioposeparamdesc_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudioposeparamdesc_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t::sznameindex' offset.");
		}

		// [offset] mstudioposeparamdesc_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("mstudioposeparamdesc_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t::flags' offset.");
		}

		// [offset] mstudioposeparamdesc_t::start
		if ((this.start = view_as<Address>(gamedata.GetOffset("mstudioposeparamdesc_t::start"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t::start' offset.");
		}

		// [offset] mstudioposeparamdesc_t::end
		if ((this.end = view_as<Address>(gamedata.GetOffset("mstudioposeparamdesc_t::end"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t::end' offset.");
		}

		// [offset] mstudioposeparamdesc_t::loop
		if ((this.loop = view_as<Address>(gamedata.GetOffset("mstudioposeparamdesc_t::loop"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t::loop' offset.");
		}

		// [sizeof] mstudioposeparamdesc_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioposeparamdesc_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioposeparamdesc_t' sizeof.");
		}
	}
}
// mstudioposeparamdesc_t mstudioposeparamdesc_t;

// mstudioposeparamdesc_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudioposeparamdesc_t.size * index)
		);
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioposeparamdesc_t.sznameindex, NumberType_Int32);
		}
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioposeparamdesc_t.flags, NumberType_Int32);
		}
	}

	property float start
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'start' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioposeparamdesc_t.start, NumberType_Int32);
		}
	}

	property float end
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'end' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioposeparamdesc_t.end, NumberType_Int32);
		}
	}

	property float loop
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'loop' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioposeparamdesc_t.loop, NumberType_Int32);
		}
	}

}

// test

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

PrintToServer("flags: %i", studio_hdr.flags);

PrintToServer("start: %f", studio_hdr.start);

PrintToServer("end: %f", studio_hdr.end);

PrintToServer("loop: %f", studio_hdr.loop);

