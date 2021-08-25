enum struct studiohdr2_t
{
	int size;
	Address numsrcbonetransform;
	Address srcbonetransformindex;
	Address illumpositionattachmentindex;
	Address flMaxEyeDeflection;
	Address linearboneindex;
	Address sznameindex;
	Address m_nBoneFlexDriverCount;
	Address m_nBoneFlexDriverIndex;
	Address m_nBodyGroupPresetCount;
	Address m_nBodyGroupPresetIndex;
	Address padding_unused;
	Address reserved;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] studiohdr2_t::numsrcbonetransform
		if ((this.numsrcbonetransform = view_as<Address>(gamedata.GetOffset("studiohdr2_t::numsrcbonetransform"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::numsrcbonetransform' offset.");
		}

		// [offset] studiohdr2_t::srcbonetransformindex
		if ((this.srcbonetransformindex = view_as<Address>(gamedata.GetOffset("studiohdr2_t::srcbonetransformindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::srcbonetransformindex' offset.");
		}

		// [offset] studiohdr2_t::illumpositionattachmentindex
		if ((this.illumpositionattachmentindex = view_as<Address>(gamedata.GetOffset("studiohdr2_t::illumpositionattachmentindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::illumpositionattachmentindex' offset.");
		}

		// [offset] studiohdr2_t::flMaxEyeDeflection
		if ((this.flMaxEyeDeflection = view_as<Address>(gamedata.GetOffset("studiohdr2_t::flMaxEyeDeflection"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::flMaxEyeDeflection' offset.");
		}

		// [offset] studiohdr2_t::linearboneindex
		if ((this.linearboneindex = view_as<Address>(gamedata.GetOffset("studiohdr2_t::linearboneindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::linearboneindex' offset.");
		}

		// [offset] studiohdr2_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("studiohdr2_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::sznameindex' offset.");
		}

		// [offset] studiohdr2_t::m_nBoneFlexDriverCount
		if ((this.m_nBoneFlexDriverCount = view_as<Address>(gamedata.GetOffset("studiohdr2_t::m_nBoneFlexDriverCount"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::m_nBoneFlexDriverCount' offset.");
		}

		// [offset] studiohdr2_t::m_nBoneFlexDriverIndex
		if ((this.m_nBoneFlexDriverIndex = view_as<Address>(gamedata.GetOffset("studiohdr2_t::m_nBoneFlexDriverIndex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::m_nBoneFlexDriverIndex' offset.");
		}

		// [offset] studiohdr2_t::m_nBodyGroupPresetCount
		if ((this.m_nBodyGroupPresetCount = view_as<Address>(gamedata.GetOffset("studiohdr2_t::m_nBodyGroupPresetCount"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::m_nBodyGroupPresetCount' offset.");
		}

		// [offset] studiohdr2_t::m_nBodyGroupPresetIndex
		if ((this.m_nBodyGroupPresetIndex = view_as<Address>(gamedata.GetOffset("studiohdr2_t::m_nBodyGroupPresetIndex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::m_nBodyGroupPresetIndex' offset.");
		}

		// [offset] studiohdr2_t::padding_unused
		if ((this.padding_unused = view_as<Address>(gamedata.GetOffset("studiohdr2_t::padding_unused"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::padding_unused' offset.");
		}

		// [offset] studiohdr2_t::reserved
		if ((this.reserved = view_as<Address>(gamedata.GetOffset("studiohdr2_t::reserved"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr2_t::reserved' offset.");
		}

		// [sizeof] studiohdr2_t
		if ((this.size = gamedata.GetOffset("sizeof::studiohdr2_t")) == -1)
		{
		    SetFailState("Failed to get 'studiohdr2_t' sizeof.");
		}
	}
}
// studiohdr2_t studiohdr2_t;

// studiohdr2_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.studiohdr2_t.size * index)
		);
	}

	property int numsrcbonetransform
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numsrcbonetransform' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.numsrcbonetransform, NumberType_Int32);
		}
	}

	property int srcbonetransformindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'srcbonetransformindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.srcbonetransformindex, NumberType_Int32);
		}
	}

	property int illumpositionattachmentindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'illumpositionattachmentindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.illumpositionattachmentindex, NumberType_Int32);
		}
	}

	property float flMaxEyeDeflection
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flMaxEyeDeflection' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.flMaxEyeDeflection, NumberType_Int32);
		}
	}

	property int linearboneindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'linearboneindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.linearboneindex, NumberType_Int32);
		}
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.sznameindex, NumberType_Int32);
		}
	}

	property int m_nBoneFlexDriverCount
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'm_nBoneFlexDriverCount' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.m_nBoneFlexDriverCount, NumberType_Int32);
		}
	}

	property int m_nBoneFlexDriverIndex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'm_nBoneFlexDriverIndex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.m_nBoneFlexDriverIndex, NumberType_Int32);
		}
	}

	property int m_nBodyGroupPresetCount
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'm_nBodyGroupPresetCount' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.m_nBodyGroupPresetCount, NumberType_Int32);
		}
	}

	property int m_nBodyGroupPresetIndex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'm_nBodyGroupPresetIndex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.m_nBodyGroupPresetIndex, NumberType_Int32);
		}
	}

	property int padding_unused
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'padding_unused' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.padding_unused, NumberType_Int32);
		}
	}

	public void get_reserved(int reserved[44])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr2_t.reserved, reserved, sizeof(reserved));
	}

}

// test

PrintToServer("numsrcbonetransform: %i", studio_hdr.numsrcbonetransform);

PrintToServer("srcbonetransformindex: %i", studio_hdr.srcbonetransformindex);

PrintToServer("illumpositionattachmentindex: %i", studio_hdr.illumpositionattachmentindex);

PrintToServer("flMaxEyeDeflection: %f", studio_hdr.flMaxEyeDeflection);

PrintToServer("linearboneindex: %i", studio_hdr.linearboneindex);

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

PrintToServer("m_nBoneFlexDriverCount: %i", studio_hdr.m_nBoneFlexDriverCount);

PrintToServer("m_nBoneFlexDriverIndex: %i", studio_hdr.m_nBoneFlexDriverIndex);

PrintToServer("m_nBodyGroupPresetCount: %i", studio_hdr.m_nBodyGroupPresetCount);

PrintToServer("m_nBodyGroupPresetIndex: %i", studio_hdr.m_nBodyGroupPresetIndex);

PrintToServer("padding_unused: %i", studio_hdr.padding_unused);

int reserved[44];
studio_hdr.get_reserved(reserved);
PrintToServer("reserved: %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i %i ", reserved[0], reserved[1], reserved[2], reserved[3], reserved[4], reserved[5], reserved[6], reserved[7], reserved[8], reserved[9], reserved[10], reserved[11], reserved[12], reserved[13], reserved[14], reserved[15], reserved[16], reserved[17], reserved[18], reserved[19], reserved[20], reserved[21], reserved[22], reserved[23], reserved[24], reserved[25], reserved[26], reserved[27], reserved[28], reserved[29], reserved[30], reserved[31], reserved[32], reserved[33], reserved[34], reserved[35], reserved[36], reserved[37], reserved[38], reserved[39], reserved[40], reserved[41], reserved[42], reserved[43]);

