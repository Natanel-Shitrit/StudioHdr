enum struct mstudiobone_t
{
	int size;
	Address sznameindex;
	Address parent;
	Address bonecontroller;
	Address pos;
	Address quat;
	Address rot;
	Address posscale;
	Address rotscale;
	Address poseToBone;
	Address qAlignment;
	Address flags;
	Address proctype;
	Address procindex;
	Address physicsbone;
	Address surfacepropidx;
	Address contents;
	Address surfacepropLookup;
	Address unused;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiobone_t::sznameindex
		if ((this.sznameindex = view_as<Address>(gamedata.GetOffset("mstudiobone_t::sznameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::sznameindex' offset.");
		}

		// [offset] mstudiobone_t::parent
		if ((this.parent = view_as<Address>(gamedata.GetOffset("mstudiobone_t::parent"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::parent' offset.");
		}

		// [offset] mstudiobone_t::bonecontroller
		if ((this.bonecontroller = view_as<Address>(gamedata.GetOffset("mstudiobone_t::bonecontroller"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::bonecontroller' offset.");
		}

		// [offset] mstudiobone_t::pos
		if ((this.pos = view_as<Address>(gamedata.GetOffset("mstudiobone_t::pos"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::pos' offset.");
		}

		// [offset] mstudiobone_t::quat
		if ((this.quat = view_as<Address>(gamedata.GetOffset("mstudiobone_t::quat"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::quat' offset.");
		}

		// [offset] mstudiobone_t::rot
		if ((this.rot = view_as<Address>(gamedata.GetOffset("mstudiobone_t::rot"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::rot' offset.");
		}

		// [offset] mstudiobone_t::posscale
		if ((this.posscale = view_as<Address>(gamedata.GetOffset("mstudiobone_t::posscale"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::posscale' offset.");
		}

		// [offset] mstudiobone_t::rotscale
		if ((this.rotscale = view_as<Address>(gamedata.GetOffset("mstudiobone_t::rotscale"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::rotscale' offset.");
		}

		// [offset] mstudiobone_t::poseToBone
		if ((this.poseToBone = view_as<Address>(gamedata.GetOffset("mstudiobone_t::poseToBone"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::poseToBone' offset.");
		}

		// [offset] mstudiobone_t::qAlignment
		if ((this.qAlignment = view_as<Address>(gamedata.GetOffset("mstudiobone_t::qAlignment"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::qAlignment' offset.");
		}

		// [offset] mstudiobone_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("mstudiobone_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::flags' offset.");
		}

		// [offset] mstudiobone_t::proctype
		if ((this.proctype = view_as<Address>(gamedata.GetOffset("mstudiobone_t::proctype"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::proctype' offset.");
		}

		// [offset] mstudiobone_t::procindex
		if ((this.procindex = view_as<Address>(gamedata.GetOffset("mstudiobone_t::procindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::procindex' offset.");
		}

		// [offset] mstudiobone_t::physicsbone
		if ((this.physicsbone = view_as<Address>(gamedata.GetOffset("mstudiobone_t::physicsbone"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::physicsbone' offset.");
		}

		// [offset] mstudiobone_t::surfacepropidx
		if ((this.surfacepropidx = view_as<Address>(gamedata.GetOffset("mstudiobone_t::surfacepropidx"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::surfacepropidx' offset.");
		}

		// [offset] mstudiobone_t::contents
		if ((this.contents = view_as<Address>(gamedata.GetOffset("mstudiobone_t::contents"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::contents' offset.");
		}

		// [offset] mstudiobone_t::surfacepropLookup
		if ((this.surfacepropLookup = view_as<Address>(gamedata.GetOffset("mstudiobone_t::surfacepropLookup"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::surfacepropLookup' offset.");
		}

		// [offset] mstudiobone_t::unused
		if ((this.unused = view_as<Address>(gamedata.GetOffset("mstudiobone_t::unused"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiobone_t::unused' offset.");
		}

		// [sizeof] mstudiobone_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiobone_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiobone_t' sizeof.");
		}
	}
}
// mstudiobone_t mstudiobone_t;

// mstudiobone_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudiobone_t.unused * index)
		);
	}

	property int sznameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'sznameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.sznameindex, NumberType_Int32);
		}
	}

	property int parent
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'parent' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.parent, NumberType_Int32);
		}
	}

	public void get_bonecontroller(int bonecontroller[6])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.bonecontroller, bonecontroller, sizeof(bonecontroller));
	}

	public void get_pos(float pos[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.pos, pos, sizeof(pos));
	}

	public void get_quat(float quat[4])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.quat, quat, sizeof(quat));
	}

	public void get_rot(float rot[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.rot, rot, sizeof(rot));
	}

	public void get_posscale(float posscale[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.posscale, posscale, sizeof(posscale));
	}

	public void get_rotscale(float rotscale[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.rotscale, rotscale, sizeof(rotscale));
	}

	public void get_poseToBone(float poseToBone[3][4])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.poseToBone, poseToBone, sizeof(poseToBone));
	}

	public void get_qAlignment(float qAlignment[4])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.qAlignment, qAlignment, sizeof(qAlignment));
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.flags, NumberType_Int32);
		}
	}

	property int proctype
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'proctype' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.proctype, NumberType_Int32);
		}
	}

	property int procindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'procindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.procindex, NumberType_Int32);
		}
	}

	property int physicsbone
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'physicsbone' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.physicsbone, NumberType_Int32);
		}
	}

	property int surfacepropidx
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'surfacepropidx' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.surfacepropidx, NumberType_Int32);
		}
	}

	property int contents
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'contents' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.contents, NumberType_Int32);
		}
	}

	property int surfacepropLookup
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'surfacepropLookup' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.surfacepropLookup, NumberType_Int32);
		}
	}

	public void get_unused(int unused[7])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiobone_t.unused, unused, sizeof(unused));
	}

}

// test

PrintToServer("sznameindex: %i", studio_hdr.sznameindex);

PrintToServer("parent: %i", studio_hdr.parent);

int bonecontroller[6];
studio_hdr.get_bonecontroller(bonecontroller);
PrintToServer("bonecontroller: %i %i %i %i %i %i ", bonecontroller[0], bonecontroller[1], bonecontroller[2], bonecontroller[3], bonecontroller[4], bonecontroller[5]);

float pos[3];
studio_hdr.get_pos(pos);
PrintToServer("pos: %f %f %f ", pos[0], pos[1], pos[2]);

float quat[4];
studio_hdr.get_quat(quat);
PrintToServer("quat: %f %f %f %f ", quat[0], quat[1], quat[2], quat[3]);

float rot[3];
studio_hdr.get_rot(rot);
PrintToServer("rot: %f %f %f ", rot[0], rot[1], rot[2]);

float posscale[3];
studio_hdr.get_posscale(posscale);
PrintToServer("posscale: %f %f %f ", posscale[0], posscale[1], posscale[2]);

float rotscale[3];
studio_hdr.get_rotscale(rotscale);
PrintToServer("rotscale: %f %f %f ", rotscale[0], rotscale[1], rotscale[2]);

float poseToBone[3][4];
studio_hdr.get_poseToBone(poseToBone);
PrintToServer("poseToBone: %f %f %f %f %f %f %f %f %f %f %f %f ", poseToBone[0], poseToBone[1], poseToBone[2], poseToBone[3], poseToBone[4], poseToBone[5], poseToBone[6], poseToBone[7], poseToBone[8], poseToBone[9], poseToBone[10], poseToBone[11]);

float qAlignment[4];
studio_hdr.get_qAlignment(qAlignment);
PrintToServer("qAlignment: %f %f %f %f ", qAlignment[0], qAlignment[1], qAlignment[2], qAlignment[3]);

PrintToServer("flags: %i", studio_hdr.flags);

PrintToServer("proctype: %i", studio_hdr.proctype);

PrintToServer("procindex: %i", studio_hdr.procindex);

PrintToServer("physicsbone: %i", studio_hdr.physicsbone);

PrintToServer("surfacepropidx: %i", studio_hdr.surfacepropidx);

PrintToServer("contents: %i", studio_hdr.contents);

PrintToServer("surfacepropLookup: %i", studio_hdr.surfacepropLookup);

int unused[7];
studio_hdr.get_unused(unused);
PrintToServer("unused: %i %i %i %i %i %i %i ", unused[0], unused[1], unused[2], unused[3], unused[4], unused[5], unused[6]);

