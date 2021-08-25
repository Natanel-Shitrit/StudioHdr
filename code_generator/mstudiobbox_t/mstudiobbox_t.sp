enum struct mstudiobbox_t
{
	int size;
	Address bone;
	Address group;
	Address bbmin;
	Address bbmax;
	Address szhitboxnameindex;
	Address angOffsetOrientation;
	Address flCapsuleRadius;
	Address unused;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiobbox_t::bone
		if ((this.bone = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::bone"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::bone' offset.");
		}

		// [offset] mstudiobbox_t::group
		if ((this.group = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::group"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::group' offset.");
		}

		// [offset] mstudiobbox_t::bbmin
		if ((this.bbmin = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::bbmin"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::bbmin' offset.");
		}

		// [offset] mstudiobbox_t::bbmax
		if ((this.bbmax = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::bbmax"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::bbmax' offset.");
		}

		// [offset] mstudiobbox_t::szhitboxnameindex
		if ((this.szhitboxnameindex = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::szhitboxnameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::szhitboxnameindex' offset.");
		}

		// [offset] mstudiobbox_t::angOffsetOrientation
		if ((this.angOffsetOrientation = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::angOffsetOrientation"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::angOffsetOrientation' offset.");
		}

		// [offset] mstudiobbox_t::flCapsuleRadius
		if ((this.flCapsuleRadius = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::flCapsuleRadius"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::flCapsuleRadius' offset.");
		}

		// [offset] mstudiobbox_t::unused
		if ((this.unused = view_as<Address>(gamedata.GetOffset("mstudiobbox_t::unused"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobbox_t::unused' offset.");
		}

		// [sizeof] mstudiobbox_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiobbox_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiobbox_t' sizeof.");
		}
	}
}
// mstudiobbox_t mstudiobbox_t;

// mstudiobbox_t methodmap
methodmap HitBox
{
	public HitBox(Address base, Address offset, int index)
	{
		return view_as<HitBox>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudiobbox_t.size * index)
		);
	}

	property int bone
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bone' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.bone, NumberType_Int32);
		}
	}

	property int group
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'group' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.group, NumberType_Int32);
		}
	}

	public void get_bbmin(float bbmin[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.bbmin, bbmin, sizeof(bbmin));
	}

	public void get_bbmax(float bbmax[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.bbmax, bbmax, sizeof(bbmax));
	}

	property int szhitboxnameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szhitboxnameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.szhitboxnameindex, NumberType_Int32);
		}
	}

	public void get_angOffsetOrientation(float angOffsetOrientation[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.angOffsetOrientation, angOffsetOrientation, sizeof(angOffsetOrientation));
	}

	property float flCapsuleRadius
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flCapsuleRadius' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobbox_t.flCapsuleRadius, NumberType_Int32);
		}
	}
}

// test

PrintToServer("bone: %i", studio_hdr.bone);

PrintToServer("group: %i", studio_hdr.group);

float bbmin[3];
studio_hdr.get_bbmin(bbmin);
PrintToServer("bbmin: %f %f %f ", bbmin[0], bbmin[1], bbmin[2]);

float bbmax[3];
studio_hdr.get_bbmax(bbmax);
PrintToServer("bbmax: %f %f %f ", bbmax[0], bbmax[1], bbmax[2]);

PrintToServer("szhitboxnameindex: %i", studio_hdr.szhitboxnameindex);

float angOffsetOrientation[3];
studio_hdr.get_angOffsetOrientation(angOffsetOrientation);
PrintToServer("angOffsetOrientation: %f %f %f ", angOffsetOrientation[0], angOffsetOrientation[1], angOffsetOrientation[2]);

PrintToServer("flCapsuleRadius: %f", studio_hdr.flCapsuleRadius);

int unused[4];
studio_hdr.get_unused(unused);
PrintToServer("unused: %i %i %i %i ", unused[0], unused[1], unused[2], unused[3]);

