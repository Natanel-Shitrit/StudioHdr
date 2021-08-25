enum struct mstudioseqdesc_t
{
	int size;
	Address baseptr;
	Address szlabelindex;
	Address szactivitynameindex;
	Address flags;
	Address activity;
	Address actweight;
	Address numevents;
	Address eventindex;
	Address bbmin;
	Address bbmax;
	Address numblends;
	Address animindexindex;
	Address movementindex;
	Address groupsize;
	Address paramindex;
	Address paramstart;
	Address paramend;
	Address paramparent;
	Address fadeintime;
	Address fadeouttime;
	Address localentrynode;
	Address localexitnode;
	Address nodeflags;
	Address entryphase;
	Address exitphase;
	Address lastframe;
	Address nextseq;
	Address pose;
	Address numikrules;
	Address numautolayers;
	Address autolayerindex;
	Address weightlistindex;
	Address posekeyindex;
	Address numiklocks;
	Address iklockindex;
	Address keyvalueindex;
	Address keyvaluesize;
	Address cycleposeindex;
	Address activitymodifierindex;
	Address numactivitymodifiers;
	Address animtagindex;
	Address numanimtags;
	Address rootDriverIndex;
	Address unused;

	void LoadOffsets(GameData gamedata)
	{
		// [offset] mstudioseqdesc_t::baseptr
		if ((this.baseptr = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::baseptr"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::baseptr' offset.");
		}

		// [offset] mstudioseqdesc_t::szlabelindex
		if ((this.szlabelindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::szlabelindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::szlabelindex' offset.");
		}

		// [offset] mstudioseqdesc_t::szactivitynameindex
		if ((this.szactivitynameindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::szactivitynameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::szactivitynameindex' offset.");
		}

		// [offset] mstudioseqdesc_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::flags' offset.");
		}

		// [offset] mstudioseqdesc_t::activity
		if ((this.activity = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::activity"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::activity' offset.");
		}

		// [offset] mstudioseqdesc_t::actweight
		if ((this.actweight = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::actweight"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::actweight' offset.");
		}

		// [offset] mstudioseqdesc_t::numevents
		if ((this.numevents = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numevents"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numevents' offset.");
		}

		// [offset] mstudioseqdesc_t::eventindex
		if ((this.eventindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::eventindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::eventindex' offset.");
		}

		// [offset] mstudioseqdesc_t::bbmin
		if ((this.bbmin = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::bbmin"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::bbmin' offset.");
		}

		// [offset] mstudioseqdesc_t::bbmax
		if ((this.bbmax = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::bbmax"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::bbmax' offset.");
		}

		// [offset] mstudioseqdesc_t::numblends
		if ((this.numblends = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numblends"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numblends' offset.");
		}

		// [offset] mstudioseqdesc_t::animindexindex
		if ((this.animindexindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::animindexindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::animindexindex' offset.");
		}

		// [offset] mstudioseqdesc_t::movementindex
		if ((this.movementindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::movementindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::movementindex' offset.");
		}

		// [offset] mstudioseqdesc_t::groupsize
		if ((this.groupsize = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::groupsize"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::groupsize' offset.");
		}

		// [offset] mstudioseqdesc_t::paramindex
		if ((this.paramindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::paramindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::paramindex' offset.");
		}

		// [offset] mstudioseqdesc_t::paramstart
		if ((this.paramstart = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::paramstart"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::paramstart' offset.");
		}

		// [offset] mstudioseqdesc_t::paramend
		if ((this.paramend = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::paramend"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::paramend' offset.");
		}

		// [offset] mstudioseqdesc_t::paramparent
		if ((this.paramparent = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::paramparent"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::paramparent' offset.");
		}

		// [offset] mstudioseqdesc_t::fadeintime
		if ((this.fadeintime = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::fadeintime"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::fadeintime' offset.");
		}

		// [offset] mstudioseqdesc_t::fadeouttime
		if ((this.fadeouttime = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::fadeouttime"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::fadeouttime' offset.");
		}

		// [offset] mstudioseqdesc_t::localentrynode
		if ((this.localentrynode = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::localentrynode"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::localentrynode' offset.");
		}

		// [offset] mstudioseqdesc_t::localexitnode
		if ((this.localexitnode = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::localexitnode"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::localexitnode' offset.");
		}

		// [offset] mstudioseqdesc_t::nodeflags
		if ((this.nodeflags = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::nodeflags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::nodeflags' offset.");
		}

		// [offset] mstudioseqdesc_t::entryphase
		if ((this.entryphase = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::entryphase"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::entryphase' offset.");
		}

		// [offset] mstudioseqdesc_t::exitphase
		if ((this.exitphase = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::exitphase"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::exitphase' offset.");
		}

		// [offset] mstudioseqdesc_t::lastframe
		if ((this.lastframe = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::lastframe"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::lastframe' offset.");
		}

		// [offset] mstudioseqdesc_t::nextseq
		if ((this.nextseq = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::nextseq"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::nextseq' offset.");
		}

		// [offset] mstudioseqdesc_t::pose
		if ((this.pose = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::pose"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::pose' offset.");
		}

		// [offset] mstudioseqdesc_t::numikrules
		if ((this.numikrules = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numikrules"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numikrules' offset.");
		}

		// [offset] mstudioseqdesc_t::numautolayers
		if ((this.numautolayers = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numautolayers"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numautolayers' offset.");
		}

		// [offset] mstudioseqdesc_t::autolayerindex
		if ((this.autolayerindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::autolayerindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::autolayerindex' offset.");
		}

		// [offset] mstudioseqdesc_t::weightlistindex
		if ((this.weightlistindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::weightlistindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::weightlistindex' offset.");
		}

		// [offset] mstudioseqdesc_t::posekeyindex
		if ((this.posekeyindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::posekeyindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::posekeyindex' offset.");
		}

		// [offset] mstudioseqdesc_t::numiklocks
		if ((this.numiklocks = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numiklocks"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numiklocks' offset.");
		}

		// [offset] mstudioseqdesc_t::iklockindex
		if ((this.iklockindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::iklockindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::iklockindex' offset.");
		}

		// [offset] mstudioseqdesc_t::keyvalueindex
		if ((this.keyvalueindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::keyvalueindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::keyvalueindex' offset.");
		}

		// [offset] mstudioseqdesc_t::keyvaluesize
		if ((this.keyvaluesize = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::keyvaluesize"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::keyvaluesize' offset.");
		}

		// [offset] mstudioseqdesc_t::cycleposeindex
		if ((this.cycleposeindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::cycleposeindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::cycleposeindex' offset.");
		}

		// [offset] mstudioseqdesc_t::activitymodifierindex
		if ((this.activitymodifierindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::activitymodifierindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::activitymodifierindex' offset.");
		}

		// [offset] mstudioseqdesc_t::numactivitymodifiers
		if ((this.numactivitymodifiers = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numactivitymodifiers"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numactivitymodifiers' offset.");
		}

		// [offset] mstudioseqdesc_t::animtagindex
		if ((this.animtagindex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::animtagindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::animtagindex' offset.");
		}

		// [offset] mstudioseqdesc_t::numanimtags
		if ((this.numanimtags = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::numanimtags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::numanimtags' offset.");
		}

		// [offset] mstudioseqdesc_t::rootDriverIndex
		if ((this.rootDriverIndex = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::rootDriverIndex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::rootDriverIndex' offset.");
		}

		// [offset] mstudioseqdesc_t::unused
		if ((this.unused = view_as<Address>(gamedata.GetOffset("mstudioseqdesc_t::unused"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t::unused' offset.");
		}

		// [sizeof] mstudioseqdesc_t
		if ((this.size = gamedata.GetOffset("sizeof::mstudioseqdesc_t")) == -1)
		{
		    SetFailState("Failed to get 'mstudioseqdesc_t' sizeof.");
		}
	}
}
// mstudioseqdesc_t mstudioseqdesc_t;

// mstudioseqdesc_t methodmap
{
	public (Address base, Address offset, int index)
	{
		return view_as<>(
			base +
			LoadFromAddress(base + offset, NumberType_Int32) +
			view_as<Address>(g_Offsets.mstudioseqdesc_t.size * index)
		);
	}

	property int baseptr
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'baseptr' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.baseptr, NumberType_Int32);
		}
	}

	property int szlabelindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szlabelindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.szlabelindex, NumberType_Int32);
		}
	}

	property int szactivitynameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szactivitynameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.szactivitynameindex, NumberType_Int32);
		}
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.flags, NumberType_Int32);
		}
	}

	property int activity
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'activity' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.activity, NumberType_Int32);
		}
	}

	property int actweight
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'actweight' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.actweight, NumberType_Int32);
		}
	}

	property int numevents
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numevents' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numevents, NumberType_Int32);
		}
	}

	property int eventindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'eventindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.eventindex, NumberType_Int32);
		}
	}

	public void get_bbmin(float bbmin[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.bbmin, bbmin, sizeof(bbmin));
	}

	public void get_bbmax(float bbmax[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.bbmax, bbmax, sizeof(bbmax));
	}

	property int numblends
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numblends' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numblends, NumberType_Int32);
		}
	}

	property int animindexindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animindexindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.animindexindex, NumberType_Int32);
		}
	}

	property int movementindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'movementindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.movementindex, NumberType_Int32);
		}
	}

	public void get_groupsize(int groupsize[2])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.groupsize, groupsize, sizeof(groupsize));
	}

	public void get_paramindex(int paramindex[2])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.paramindex, paramindex, sizeof(paramindex));
	}

	public void get_paramstart(float paramstart[2])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.paramstart, paramstart, sizeof(paramstart));
	}

	public void get_paramend(float paramend[2])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.paramend, paramend, sizeof(paramend));
	}

	property int paramparent
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'paramparent' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.paramparent, NumberType_Int32);
		}
	}

	property float fadeintime
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'fadeintime' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.fadeintime, NumberType_Int32);
		}
	}

	property float fadeouttime
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'fadeouttime' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.fadeouttime, NumberType_Int32);
		}
	}

	property int localentrynode
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localentrynode' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.localentrynode, NumberType_Int32);
		}
	}

	property int localexitnode
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localexitnode' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.localexitnode, NumberType_Int32);
		}
	}

	property int nodeflags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'nodeflags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.nodeflags, NumberType_Int32);
		}
	}

	property float entryphase
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'entryphase' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.entryphase, NumberType_Int32);
		}
	}

	property float exitphase
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'exitphase' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.exitphase, NumberType_Int32);
		}
	}

	property float lastframe
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'lastframe' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.lastframe, NumberType_Int32);
		}
	}

	property int nextseq
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'nextseq' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.nextseq, NumberType_Int32);
		}
	}

	property int pose
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'pose' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.pose, NumberType_Int32);
		}
	}

	property int numikrules
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numikrules' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numikrules, NumberType_Int32);
		}
	}

	property int numautolayers
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numautolayers' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numautolayers, NumberType_Int32);
		}
	}

	property int autolayerindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'autolayerindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.autolayerindex, NumberType_Int32);
		}
	}

	property int weightlistindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'weightlistindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.weightlistindex, NumberType_Int32);
		}
	}

	property int posekeyindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'posekeyindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.posekeyindex, NumberType_Int32);
		}
	}

	property int numiklocks
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numiklocks' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numiklocks, NumberType_Int32);
		}
	}

	property int iklockindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'iklockindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.iklockindex, NumberType_Int32);
		}
	}

	property int keyvalueindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'keyvalueindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.keyvalueindex, NumberType_Int32);
		}
	}

	property int keyvaluesize
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'keyvaluesize' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.keyvaluesize, NumberType_Int32);
		}
	}

	property int cycleposeindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'cycleposeindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.cycleposeindex, NumberType_Int32);
		}
	}

	property int activitymodifierindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'activitymodifierindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.activitymodifierindex, NumberType_Int32);
		}
	}

	property int numactivitymodifiers
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numactivitymodifiers' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numactivitymodifiers, NumberType_Int32);
		}
	}

	property int animtagindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animtagindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.animtagindex, NumberType_Int32);
		}
	}

	property int numanimtags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numanimtags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.numanimtags, NumberType_Int32);
		}
	}

	property int rootDriverIndex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'rootDriverIndex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.rootDriverIndex, NumberType_Int32);
		}
	}

	public void get_unused(int unused[2])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.mstudioseqdesc_t.unused, unused, sizeof(unused));
	}

}

// test

PrintToServer("baseptr: %i", studio_hdr.baseptr);

PrintToServer("szlabelindex: %i", studio_hdr.szlabelindex);

PrintToServer("szactivitynameindex: %i", studio_hdr.szactivitynameindex);

PrintToServer("flags: %i", studio_hdr.flags);

PrintToServer("activity: %i", studio_hdr.activity);

PrintToServer("actweight: %i", studio_hdr.actweight);

PrintToServer("numevents: %i", studio_hdr.numevents);

PrintToServer("eventindex: %i", studio_hdr.eventindex);

float bbmin[3];
studio_hdr.get_bbmin(bbmin);
PrintToServer("bbmin: %f %f %f ", bbmin[0], bbmin[1], bbmin[2]);

float bbmax[3];
studio_hdr.get_bbmax(bbmax);
PrintToServer("bbmax: %f %f %f ", bbmax[0], bbmax[1], bbmax[2]);

PrintToServer("numblends: %i", studio_hdr.numblends);

PrintToServer("animindexindex: %i", studio_hdr.animindexindex);

PrintToServer("movementindex: %i", studio_hdr.movementindex);

int groupsize[2];
studio_hdr.get_groupsize(groupsize);
PrintToServer("groupsize: %i %i ", groupsize[0], groupsize[1]);

int paramindex[2];
studio_hdr.get_paramindex(paramindex);
PrintToServer("paramindex: %i %i ", paramindex[0], paramindex[1]);

float paramstart[2];
studio_hdr.get_paramstart(paramstart);
PrintToServer("paramstart: %f %f ", paramstart[0], paramstart[1]);

float paramend[2];
studio_hdr.get_paramend(paramend);
PrintToServer("paramend: %f %f ", paramend[0], paramend[1]);

PrintToServer("paramparent: %i", studio_hdr.paramparent);

PrintToServer("fadeintime: %f", studio_hdr.fadeintime);

PrintToServer("fadeouttime: %f", studio_hdr.fadeouttime);

PrintToServer("localentrynode: %i", studio_hdr.localentrynode);

PrintToServer("localexitnode: %i", studio_hdr.localexitnode);

PrintToServer("nodeflags: %i", studio_hdr.nodeflags);

PrintToServer("entryphase: %f", studio_hdr.entryphase);

PrintToServer("exitphase: %f", studio_hdr.exitphase);

PrintToServer("lastframe: %f", studio_hdr.lastframe);

PrintToServer("nextseq: %i", studio_hdr.nextseq);

PrintToServer("pose: %i", studio_hdr.pose);

PrintToServer("numikrules: %i", studio_hdr.numikrules);

PrintToServer("numautolayers: %i", studio_hdr.numautolayers);

PrintToServer("autolayerindex: %i", studio_hdr.autolayerindex);

PrintToServer("weightlistindex: %i", studio_hdr.weightlistindex);

PrintToServer("posekeyindex: %i", studio_hdr.posekeyindex);

PrintToServer("numiklocks: %i", studio_hdr.numiklocks);

PrintToServer("iklockindex: %i", studio_hdr.iklockindex);

PrintToServer("keyvalueindex: %i", studio_hdr.keyvalueindex);

PrintToServer("keyvaluesize: %i", studio_hdr.keyvaluesize);

PrintToServer("cycleposeindex: %i", studio_hdr.cycleposeindex);

PrintToServer("activitymodifierindex: %i", studio_hdr.activitymodifierindex);

PrintToServer("numactivitymodifiers: %i", studio_hdr.numactivitymodifiers);

PrintToServer("animtagindex: %i", studio_hdr.animtagindex);

PrintToServer("numanimtags: %i", studio_hdr.numanimtags);

PrintToServer("rootDriverIndex: %i", studio_hdr.rootDriverIndex);

int unused[2];
studio_hdr.get_unused(unused);
PrintToServer("unused: %i %i ", unused[0], unused[1]);

