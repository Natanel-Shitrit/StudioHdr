enum struct mstudiomouth_t
{
	int size;
	Address bone;
	Address forward;
	Address flexdesc;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudiomouth_t::bone
		if ((this.bone = view_as<Address>(gamedata.GetOffset("mstudiomouth_t::bone"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiomouth_t::bone' offset.");
		}

		// [offset] mstudiomouth_t::forward
		if ((this.forward = view_as<Address>(gamedata.GetOffset("mstudiomouth_t::forward"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiomouth_t::forward' offset.");
		}

		// [offset] mstudiomouth_t::flexdesc
		if ((this.flexdesc = view_as<Address>(gamedata.GetOffset("mstudiomouth_t::flexdesc"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudiomouth_t::flexdesc' offset.");
		}

		// [sizeof] mstudiomouth_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudiomouth_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudiomouth_t' sizeof.");
		}
	}
}
// mstudiomouth_t mstudiomouth_t;

// mstudiomouth_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudiomouth_t.size * index)
		);
	}

	property int bone
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bone' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiomouth_t.bone, NumberType_Int32);
		}
	}

	public void get_forward(float forward[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudiomouth_t.forward, forward, sizeof(forward));
	}

	property int flexdesc
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flexdesc' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudiomouth_t.flexdesc, NumberType_Int32);
		}
	}

}

// test

PrintToServer("bone: %i", studio_hdr.bone);

float forward[3];
studio_hdr.get_forward(forward);
PrintToServer("forward: %f %f %f ", forward[0], forward[1], forward[2]);

PrintToServer("flexdesc: %i", studio_hdr.flexdesc);

