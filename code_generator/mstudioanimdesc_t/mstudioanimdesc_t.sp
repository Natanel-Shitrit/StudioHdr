enum struct mstudioanimdesc_t
{
	int size;
	Address baseptr;
	Address sznameindex;
	Address fps;
	Address flags;
	Address numframes;
	Address nummovements;
	Address movementindex;
	Address ikrulezeroframeindex;
	Address unused1;
	Address animblock;
	Address animindex;
	Address numikrules;
	Address ikruleindex;
	Address animblockikruleindex;
	Address numlocalhierarchy;
	Address localhierarchyindex;
	Address sectionindex;
	Address sectionframes;
	Address zeroframespan;
	Address zeroframecount;
	Address zeroframeindex;
	Address zeroframestalltime;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioanimdesc_t::baseptr
		if ((this.baseptr = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::baseptr"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::baseptr' offset.");
		}

		// [offset] mstudioanimdesc_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::sznameindex' offset.");
		}

		// [offset] mstudioanimdesc_t::fps
		if ((this.fps = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::fps"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::fps' offset.");
		}

		// [offset] mstudioanimdesc_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::flags' offset.");
		}

		// [offset] mstudioanimdesc_t::numframes
		if ((this.numframes = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::numframes"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::numframes' offset.");
		}

		// [offset] mstudioanimdesc_t::nummovements
		if ((this.nummovements = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::nummovements"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::nummovements' offset.");
		}

		// [offset] mstudioanimdesc_t::movementindex
		if ((this.movementindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::movementindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::movementindex' offset.");
		}

		// [offset] mstudioanimdesc_t::ikrulezeroframeindex
		if ((this.ikrulezeroframeindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::ikrulezeroframeindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::ikrulezeroframeindex' offset.");
		}

		// [offset] mstudioanimdesc_t::unused1
		if ((this.unused1 = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::unused1"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::unused1' offset.");
		}

		// [offset] mstudioanimdesc_t::animblock
		if ((this.animblock = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::animblock"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::animblock' offset.");
		}

		// [offset] mstudioanimdesc_t::animindex
		if ((this.animindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::animindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::animindex' offset.");
		}

		// [offset] mstudioanimdesc_t::numikrules
		if ((this.numikrules = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::numikrules"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::numikrules' offset.");
		}

		// [offset] mstudioanimdesc_t::ikruleindex
		if ((this.ikruleindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::ikruleindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::ikruleindex' offset.");
		}

		// [offset] mstudioanimdesc_t::animblockikruleindex
		if ((this.animblockikruleindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::animblockikruleindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::animblockikruleindex' offset.");
		}

		// [offset] mstudioanimdesc_t::numlocalhierarchy
		if ((this.numlocalhierarchy = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::numlocalhierarchy"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::numlocalhierarchy' offset.");
		}

		// [offset] mstudioanimdesc_t::localhierarchyindex
		if ((this.localhierarchyindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::localhierarchyindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::localhierarchyindex' offset.");
		}

		// [offset] mstudioanimdesc_t::sectionindex
		if ((this.sectionindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::sectionindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::sectionindex' offset.");
		}

		// [offset] mstudioanimdesc_t::sectionframes
		if ((this.sectionframes = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::sectionframes"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::sectionframes' offset.");
		}

		// [offset] mstudioanimdesc_t::zeroframespan
		if ((this.zeroframespan = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::zeroframespan"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::zeroframespan' offset.");
		}

		// [offset] mstudioanimdesc_t::zeroframecount
		if ((this.zeroframecount = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::zeroframecount"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::zeroframecount' offset.");
		}

		// [offset] mstudioanimdesc_t::zeroframeindex
		if ((this.zeroframeindex = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::zeroframeindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::zeroframeindex' offset.");
		}

		// [offset] mstudioanimdesc_t::zeroframestalltime
		if ((this.zeroframestalltime = view_as<Address>(gamedata.GetOffset("mstudioanimdesc_t::zeroframestalltime"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t::zeroframestalltime' offset.");
		}

		// [sizeof] mstudioanimdesc_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioanimdesc_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioanimdesc_t' sizeof.");
		}
	}
}
// mstudioanimdesc_t mstudioanimdesc_t;

// mstudioanimdesc_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudioanimdesc_t.size * index)
		);
	}

	property int baseptr
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'baseptr' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.baseptr, NumberType_Int32);
		}
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.sznameindex, NumberType_Int32);
		}
	}

	property float fps
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'fps' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.fps, NumberType_Int32);
		}
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.flags, NumberType_Int32);
		}
	}

	property int numframes
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numframes' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.numframes, NumberType_Int32);
		}
	}

	property int nummovements
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'nummovements' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.nummovements, NumberType_Int32);
		}
	}

	property int movementindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'movementindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.movementindex, NumberType_Int32);
		}
	}

	property int ikrulezeroframeindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'ikrulezeroframeindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.ikrulezeroframeindex, NumberType_Int32);
		}
	}

	public void get_unused1(int unused1[5])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.unused1, unused1, sizeof(unused1));
	}

	property int animblock
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animblock' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.animblock, NumberType_Int32);
		}
	}

	property int animindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.animindex, NumberType_Int32);
		}
	}

	property int numikrules
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numikrules' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.numikrules, NumberType_Int32);
		}
	}

	property int ikruleindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'ikruleindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.ikruleindex, NumberType_Int32);
		}
	}

	property int animblockikruleindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animblockikruleindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.animblockikruleindex, NumberType_Int32);
		}
	}

	property int numlocalhierarchy
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalhierarchy' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.numlocalhierarchy, NumberType_Int32);
		}
	}

	property int localhierarchyindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localhierarchyindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.localhierarchyindex, NumberType_Int32);
		}
	}

	property int sectionindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sectionindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.sectionindex, NumberType_Int32);
		}
	}

	property int sectionframes
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sectionframes' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.sectionframes, NumberType_Int32);
		}
	}

	property int zeroframespan
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'zeroframespan' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.zeroframespan, NumberType_Int16);
		}
	}

	property int zeroframecount
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'zeroframecount' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.zeroframecount, NumberType_Int16);
		}
	}

	property int zeroframeindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'zeroframeindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.zeroframeindex, NumberType_Int32);
		}
	}

	property float zeroframestalltime
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'zeroframestalltime' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioanimdesc_t.zeroframestalltime, NumberType_Int32);
		}
	}

}

// test

PrintToServer("baseptr: %i", studio_hdr.baseptr);

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

PrintToServer("fps: %f", studio_hdr.fps);

PrintToServer("flags: %i", studio_hdr.flags);

PrintToServer("numframes: %i", studio_hdr.numframes);

PrintToServer("nummovements: %i", studio_hdr.nummovements);

PrintToServer("movementindex: %i", studio_hdr.movementindex);

PrintToServer("ikrulezeroframeindex: %i", studio_hdr.ikrulezeroframeindex);

int unused1[5];
studio_hdr.get_unused1(unused1);
PrintToServer("unused1: %i %i %i %i %i ", unused1[0], unused1[1], unused1[2], unused1[3], unused1[4]);

PrintToServer("animblock: %i", studio_hdr.animblock);

PrintToServer("animindex: %i", studio_hdr.animindex);

PrintToServer("numikrules: %i", studio_hdr.numikrules);

PrintToServer("ikruleindex: %i", studio_hdr.ikruleindex);

PrintToServer("animblockikruleindex: %i", studio_hdr.animblockikruleindex);

PrintToServer("numlocalhierarchy: %i", studio_hdr.numlocalhierarchy);

PrintToServer("localhierarchyindex: %i", studio_hdr.localhierarchyindex);

PrintToServer("sectionindex: %i", studio_hdr.sectionindex);

PrintToServer("sectionframes: %i", studio_hdr.sectionframes);

PrintToServer("zeroframespan: %i", studio_hdr.zeroframespan);

PrintToServer("zeroframecount: %i", studio_hdr.zeroframecount);

PrintToServer("zeroframeindex: %i", studio_hdr.zeroframeindex);

PrintToServer("zeroframestalltime: %f", studio_hdr.zeroframestalltime);

