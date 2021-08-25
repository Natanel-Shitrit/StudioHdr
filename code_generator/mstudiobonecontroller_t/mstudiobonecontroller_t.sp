enum struct mstudiobonecontroller_t
{
	int size;
	Address bone;
	Address type;
	Address start;
	Address end;
	Address rest;
	Address inputfield;
	Address unused;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiobonecontroller_t::bone
		if ((this.bone = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::bone"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::bone' offset.");
		}

		// [offset] mstudiobonecontroller_t::type
		if ((this.type = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::type"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::type' offset.");
		}

		// [offset] mstudiobonecontroller_t::start
		if ((this.start = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::start"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::start' offset.");
		}

		// [offset] mstudiobonecontroller_t::end
		if ((this.end = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::end"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::end' offset.");
		}

		// [offset] mstudiobonecontroller_t::rest
		if ((this.rest = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::rest"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::rest' offset.");
		}

		// [offset] mstudiobonecontroller_t::inputfield
		if ((this.inputfield = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::inputfield"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::inputfield' offset.");
		}

		// [offset] mstudiobonecontroller_t::unused
		if ((this.unused = view_as<Address>(gamedata.GetOffset("mstudiobonecontroller_t::unused"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t::unused' offset.");
		}

		// [sizeof] mstudiobonecontroller_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiobonecontroller_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiobonecontroller_t' sizeof.");
		}
	}
}
// mstudiobonecontroller_t mstudiobonecontroller_t;

// mstudiobonecontroller_t methodmap
methodmap BoneController
{
	public BoneController(Address base, Address offset, int index)
	{
		return view_as<BoneController>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudiobonecontroller_t.size * index)
		);
	}

	property int bone
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bone' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.bone, NumberType_Int32);
		}
	}

	property int type
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'type' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.type, NumberType_Int32);
		}
	}

	property float start
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'start' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.start, NumberType_Int32);
		}
	}

	property float end
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'end' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.end, NumberType_Int32);
		}
	}

	property int rest
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'rest' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.rest, NumberType_Int32);
		}
	}

	property int inputfield
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'inputfield' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobonecontroller_t.inputfield, NumberType_Int32);
		}
	}
}

// test

PrintToServer("bone: %i", studio_hdr.bone);

PrintToServer("type: %i", studio_hdr.type);

PrintToServer("start: %f", studio_hdr.start);

PrintToServer("end: %f", studio_hdr.end);

PrintToServer("rest: %i", studio_hdr.rest);

PrintToServer("inputfield: %i", studio_hdr.inputfield);

int unused[8];
studio_hdr.get_unused(unused);
PrintToServer("unused: %i %i %i %i %i %i %i %i ", unused[0], unused[1], unused[2], unused[3], unused[4], unused[5], unused[6], unused[7]);

