enum struct studiohdr_t
{
	int size;
	Address id;
	Address version;
	Address checksum;
	Address name;
	Address length;
	Address eyeposition;
	Address illumposition;
	Address hull_min;
	Address hull_max;
	Address view_bbmin;
	Address view_bbmax;
	Address flags;
	Address numbones;
	Address boneindex;
	Address numbonecontrollers;
	Address bonecontrollerindex;
	Address numhitboxsets;
	Address hitboxsetindex;
	Address numlocalanim;
	Address localanimindex;
	Address numlocalseq;
	Address localseqindex;
	Address activitylistversion;
	Address eventsindexed;
	Address numtextures;
	Address textureindex;
	Address numcdtextures;
	Address cdtextureindex;
	Address numskinref;
	Address numskinfamilies;
	Address skinindex;
	Address numbodyparts;
	Address bodypartindex;
	Address numlocalattachments;
	Address localattachmentindex;
	Address numlocalnodes;
	Address localnodeindex;
	Address localnodenameindex;
	Address numflexdesc;
	Address flexdescindex;
	Address numflexcontrollers;
	Address flexcontrollerindex;
	Address numflexrules;
	Address flexruleindex;
	Address numikchains;
	Address ikchainindex;
	Address nummouths;
	Address mouthindex;
	Address numlocalposeparameters;
	Address localposeparamindex;
	Address surfacepropindex;
	Address keyvalueindex;
	Address keyvaluesize;
	Address numlocalikautoplaylocks;
	Address localikautoplaylockindex;
	Address mass;
	Address contents;
	Address numincludemodels;
	Address includemodelindex;
	Address unused_virtualModel;
	Address szanimblocknameindex;
	Address numanimblocks;
	Address animblockindex;
	Address unused_animblockModel;
	Address bonetablebynameindex;
	Address unused_pVertexBase;
	Address unused_pIndexBase;
	Address constdirectionallightdot;
	Address rootLOD;
	Address numAllowedRootLODs;
	Address unused;
	Address unused4;
	Address numflexcontrollerui;
	Address flexcontrolleruiindex;
	Address flVertAnimFixedPointScale;
	Address surfacepropLookup;
	Address studiohdr2index;
	Address unused2;

	void LoadOffsets()
	{
		// [offset] studiohdr_t::id
		if ((this.id = view_as<Address>(gamedata.GetOffset("studiohdr_t::id"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::id' offset.");
		}

		// [offset] studiohdr_t::version
		if ((this.version = view_as<Address>(gamedata.GetOffset("studiohdr_t::version"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::version' offset.");
		}

		// [offset] studiohdr_t::checksum
		if ((this.checksum = view_as<Address>(gamedata.GetOffset("studiohdr_t::checksum"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::checksum' offset.");
		}

		// [offset] studiohdr_t::name
		if ((this.name = view_as<Address>(gamedata.GetOffset("studiohdr_t::name"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::name' offset.");
		}

		// [offset] studiohdr_t::length
		if ((this.length = view_as<Address>(gamedata.GetOffset("studiohdr_t::length"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::length' offset.");
		}

		// [offset] studiohdr_t::eyeposition
		if ((this.eyeposition = view_as<Address>(gamedata.GetOffset("studiohdr_t::eyeposition"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::eyeposition' offset.");
		}

		// [offset] studiohdr_t::illumposition
		if ((this.illumposition = view_as<Address>(gamedata.GetOffset("studiohdr_t::illumposition"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::illumposition' offset.");
		}

		// [offset] studiohdr_t::hull_min
		if ((this.hull_min = view_as<Address>(gamedata.GetOffset("studiohdr_t::hull_min"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::hull_min' offset.");
		}

		// [offset] studiohdr_t::hull_max
		if ((this.hull_max = view_as<Address>(gamedata.GetOffset("studiohdr_t::hull_max"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::hull_max' offset.");
		}

		// [offset] studiohdr_t::view_bbmin
		if ((this.view_bbmin = view_as<Address>(gamedata.GetOffset("studiohdr_t::view_bbmin"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::view_bbmin' offset.");
		}

		// [offset] studiohdr_t::view_bbmax
		if ((this.view_bbmax = view_as<Address>(gamedata.GetOffset("studiohdr_t::view_bbmax"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::view_bbmax' offset.");
		}

		// [offset] studiohdr_t::flags
		if ((this.flags = view_as<Address>(gamedata.GetOffset("studiohdr_t::flags"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::flags' offset.");
		}

		// [offset] studiohdr_t::numbones
		if ((this.numbones = view_as<Address>(gamedata.GetOffset("studiohdr_t::numbones"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numbones' offset.");
		}

		// [offset] studiohdr_t::boneindex
		if ((this.boneindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::boneindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::boneindex' offset.");
		}

		// [offset] studiohdr_t::numbonecontrollers
		if ((this.numbonecontrollers = view_as<Address>(gamedata.GetOffset("studiohdr_t::numbonecontrollers"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numbonecontrollers' offset.");
		}

		// [offset] studiohdr_t::bonecontrollerindex
		if ((this.bonecontrollerindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::bonecontrollerindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::bonecontrollerindex' offset.");
		}

		// [offset] studiohdr_t::numhitboxsets
		if ((this.numhitboxsets = view_as<Address>(gamedata.GetOffset("studiohdr_t::numhitboxsets"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numhitboxsets' offset.");
		}

		// [offset] studiohdr_t::hitboxsetindex
		if ((this.hitboxsetindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::hitboxsetindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::hitboxsetindex' offset.");
		}

		// [offset] studiohdr_t::numlocalanim
		if ((this.numlocalanim = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalanim"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numlocalanim' offset.");
		}

		// [offset] studiohdr_t::localanimindex
		if ((this.localanimindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localanimindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::localanimindex' offset.");
		}

		// [offset] studiohdr_t::numlocalseq
		if ((this.numlocalseq = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalseq"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numlocalseq' offset.");
		}

		// [offset] studiohdr_t::localseqindex
		if ((this.localseqindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localseqindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::localseqindex' offset.");
		}

		// [offset] studiohdr_t::activitylistversion
		if ((this.activitylistversion = view_as<Address>(gamedata.GetOffset("studiohdr_t::activitylistversion"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::activitylistversion' offset.");
		}

		// [offset] studiohdr_t::eventsindexed
		if ((this.eventsindexed = view_as<Address>(gamedata.GetOffset("studiohdr_t::eventsindexed"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::eventsindexed' offset.");
		}

		// [offset] studiohdr_t::numtextures
		if ((this.numtextures = view_as<Address>(gamedata.GetOffset("studiohdr_t::numtextures"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numtextures' offset.");
		}

		// [offset] studiohdr_t::textureindex
		if ((this.textureindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::textureindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::textureindex' offset.");
		}

		// [offset] studiohdr_t::numcdtextures
		if ((this.numcdtextures = view_as<Address>(gamedata.GetOffset("studiohdr_t::numcdtextures"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numcdtextures' offset.");
		}

		// [offset] studiohdr_t::cdtextureindex
		if ((this.cdtextureindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::cdtextureindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::cdtextureindex' offset.");
		}

		// [offset] studiohdr_t::numskinref
		if ((this.numskinref = view_as<Address>(gamedata.GetOffset("studiohdr_t::numskinref"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numskinref' offset.");
		}

		// [offset] studiohdr_t::numskinfamilies
		if ((this.numskinfamilies = view_as<Address>(gamedata.GetOffset("studiohdr_t::numskinfamilies"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numskinfamilies' offset.");
		}

		// [offset] studiohdr_t::skinindex
		if ((this.skinindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::skinindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::skinindex' offset.");
		}

		// [offset] studiohdr_t::numbodyparts
		if ((this.numbodyparts = view_as<Address>(gamedata.GetOffset("studiohdr_t::numbodyparts"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numbodyparts' offset.");
		}

		// [offset] studiohdr_t::bodypartindex
		if ((this.bodypartindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::bodypartindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::bodypartindex' offset.");
		}

		// [offset] studiohdr_t::numlocalattachments
		if ((this.numlocalattachments = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalattachments"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numlocalattachments' offset.");
		}

		// [offset] studiohdr_t::localattachmentindex
		if ((this.localattachmentindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localattachmentindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::localattachmentindex' offset.");
		}

		// [offset] studiohdr_t::numlocalnodes
		if ((this.numlocalnodes = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalnodes"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numlocalnodes' offset.");
		}

		// [offset] studiohdr_t::localnodeindex
		if ((this.localnodeindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localnodeindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::localnodeindex' offset.");
		}

		// [offset] studiohdr_t::localnodenameindex
		if ((this.localnodenameindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localnodenameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::localnodenameindex' offset.");
		}

		// [offset] studiohdr_t::numflexdesc
		if ((this.numflexdesc = view_as<Address>(gamedata.GetOffset("studiohdr_t::numflexdesc"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numflexdesc' offset.");
		}

		// [offset] studiohdr_t::flexdescindex
		if ((this.flexdescindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::flexdescindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::flexdescindex' offset.");
		}

		// [offset] studiohdr_t::numflexcontrollers
		if ((this.numflexcontrollers = view_as<Address>(gamedata.GetOffset("studiohdr_t::numflexcontrollers"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numflexcontrollers' offset.");
		}

		// [offset] studiohdr_t::flexcontrollerindex
		if ((this.flexcontrollerindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::flexcontrollerindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::flexcontrollerindex' offset.");
		}

		// [offset] studiohdr_t::numflexrules
		if ((this.numflexrules = view_as<Address>(gamedata.GetOffset("studiohdr_t::numflexrules"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numflexrules' offset.");
		}

		// [offset] studiohdr_t::flexruleindex
		if ((this.flexruleindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::flexruleindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::flexruleindex' offset.");
		}

		// [offset] studiohdr_t::numikchains
		if ((this.numikchains = view_as<Address>(gamedata.GetOffset("studiohdr_t::numikchains"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numikchains' offset.");
		}

		// [offset] studiohdr_t::ikchainindex
		if ((this.ikchainindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::ikchainindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::ikchainindex' offset.");
		}

		// [offset] studiohdr_t::nummouths
		if ((this.nummouths = view_as<Address>(gamedata.GetOffset("studiohdr_t::nummouths"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::nummouths' offset.");
		}

		// [offset] studiohdr_t::mouthindex
		if ((this.mouthindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::mouthindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::mouthindex' offset.");
		}

		// [offset] studiohdr_t::numlocalposeparameters
		if ((this.numlocalposeparameters = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalposeparameters"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numlocalposeparameters' offset.");
		}

		// [offset] studiohdr_t::localposeparamindex
		if ((this.localposeparamindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localposeparamindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::localposeparamindex' offset.");
		}

		// [offset] studiohdr_t::surfacepropindex
		if ((this.surfacepropindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::surfacepropindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::surfacepropindex' offset.");
		}

		// [offset] studiohdr_t::keyvalueindex
		if ((this.keyvalueindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::keyvalueindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::keyvalueindex' offset.");
		}

		// [offset] studiohdr_t::keyvaluesize
		if ((this.keyvaluesize = view_as<Address>(gamedata.GetOffset("studiohdr_t::keyvaluesize"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::keyvaluesize' offset.");
		}

		// [offset] studiohdr_t::numlocalikautoplaylocks
		if ((this.numlocalikautoplaylocks = view_as<Address>(gamedata.GetOffset("studiohdr_t::numlocalikautoplaylocks"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numlocalikautoplaylocks' offset.");
		}

		// [offset] studiohdr_t::localikautoplaylockindex
		if ((this.localikautoplaylockindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::localikautoplaylockindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::localikautoplaylockindex' offset.");
		}

		// [offset] studiohdr_t::mass
		if ((this.mass = view_as<Address>(gamedata.GetOffset("studiohdr_t::mass"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::mass' offset.");
		}

		// [offset] studiohdr_t::contents
		if ((this.contents = view_as<Address>(gamedata.GetOffset("studiohdr_t::contents"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::contents' offset.");
		}

		// [offset] studiohdr_t::numincludemodels
		if ((this.numincludemodels = view_as<Address>(gamedata.GetOffset("studiohdr_t::numincludemodels"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numincludemodels' offset.");
		}

		// [offset] studiohdr_t::includemodelindex
		if ((this.includemodelindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::includemodelindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::includemodelindex' offset.");
		}

		// [offset] studiohdr_t::unused_virtualModel
		if ((this.unused_virtualModel = view_as<Address>(gamedata.GetOffset("studiohdr_t::unused_virtualModel"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::unused_virtualModel' offset.");
		}

		// [offset] studiohdr_t::szanimblocknameindex
		if ((this.szanimblocknameindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::szanimblocknameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::szanimblocknameindex' offset.");
		}

		// [offset] studiohdr_t::numanimblocks
		if ((this.numanimblocks = view_as<Address>(gamedata.GetOffset("studiohdr_t::numanimblocks"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numanimblocks' offset.");
		}

		// [offset] studiohdr_t::animblockindex
		if ((this.animblockindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::animblockindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::animblockindex' offset.");
		}

		// [offset] studiohdr_t::unused_animblockModel
		if ((this.unused_animblockModel = view_as<Address>(gamedata.GetOffset("studiohdr_t::unused_animblockModel"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::unused_animblockModel' offset.");
		}

		// [offset] studiohdr_t::bonetablebynameindex
		if ((this.bonetablebynameindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::bonetablebynameindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::bonetablebynameindex' offset.");
		}

		// [offset] studiohdr_t::unused_pVertexBase
		if ((this.unused_pVertexBase = view_as<Address>(gamedata.GetOffset("studiohdr_t::unused_pVertexBase"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::unused_pVertexBase' offset.");
		}

		// [offset] studiohdr_t::unused_pIndexBase
		if ((this.unused_pIndexBase = view_as<Address>(gamedata.GetOffset("studiohdr_t::unused_pIndexBase"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::unused_pIndexBase' offset.");
		}

		// [offset] studiohdr_t::constdirectionallightdot
		if ((this.constdirectionallightdot = view_as<Address>(gamedata.GetOffset("studiohdr_t::constdirectionallightdot"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::constdirectionallightdot' offset.");
		}

		// [offset] studiohdr_t::rootLOD
		if ((this.rootLOD = view_as<Address>(gamedata.GetOffset("studiohdr_t::rootLOD"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::rootLOD' offset.");
		}

		// [offset] studiohdr_t::numAllowedRootLODs
		if ((this.numAllowedRootLODs = view_as<Address>(gamedata.GetOffset("studiohdr_t::numAllowedRootLODs"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numAllowedRootLODs' offset.");
		}

		// [offset] studiohdr_t::unused
		if ((this.unused = view_as<Address>(gamedata.GetOffset("studiohdr_t::unused"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::unused' offset.");
		}

		// [offset] studiohdr_t::unused4
		if ((this.unused4 = view_as<Address>(gamedata.GetOffset("studiohdr_t::unused4"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::unused4' offset.");
		}

		// [offset] studiohdr_t::numflexcontrollerui
		if ((this.numflexcontrollerui = view_as<Address>(gamedata.GetOffset("studiohdr_t::numflexcontrollerui"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::numflexcontrollerui' offset.");
		}

		// [offset] studiohdr_t::flexcontrolleruiindex
		if ((this.flexcontrolleruiindex = view_as<Address>(gamedata.GetOffset("studiohdr_t::flexcontrolleruiindex"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::flexcontrolleruiindex' offset.");
		}

		// [offset] studiohdr_t::flVertAnimFixedPointScale
		if ((this.flVertAnimFixedPointScale = view_as<Address>(gamedata.GetOffset("studiohdr_t::flVertAnimFixedPointScale"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::flVertAnimFixedPointScale' offset.");
		}

		// [offset] studiohdr_t::surfacepropLookup
		if ((this.surfacepropLookup = view_as<Address>(gamedata.GetOffset("studiohdr_t::surfacepropLookup"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::surfacepropLookup' offset.");
		}

		// [offset] studiohdr_t::studiohdr2index
		if ((this.studiohdr2index = view_as<Address>(gamedata.GetOffset("studiohdr_t::studiohdr2index"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::studiohdr2index' offset.");
		}

		// [offset] studiohdr_t::unused2
		if ((this.unused2 = view_as<Address>(gamedata.GetOffset("studiohdr_t::unused2"))) == INVALID_ADDRESS_OFFSET)
		{
		    SetFailState("Failed to get 'studiohdr_t::unused2' offset.");
		}

		// [sizeof] studiohdr_t
		if ((this.size = gamedata.GetOffset("sizeof::studiohdr_t")) == -1)
		{
		    SetFailState("Failed to get 'studiohdr_t' sizeof.");
		}
	}
}
// studiohdr_t studiohdr_t;

// studiohdr_t methodmap
{

	property int id
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'id' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.id, NumberType_Int32);
		}
	}

	property int version
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'version' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.version, NumberType_Int32);
		}
	}

	property int checksum
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'checksum' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.checksum, NumberType_Int32);
		}
	}

	public void get_name(char name[64])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.name, name, sizeof(name));
	}

	property int length
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'length' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.length, NumberType_Int32);
		}
	}

	public void get_eyeposition(float eyeposition[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.eyeposition, eyeposition, sizeof(eyeposition));
	}

	public void get_illumposition(float illumposition[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.illumposition, illumposition, sizeof(illumposition));
	}

	public void get_hull_min(float hull_min[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.hull_min, hull_min, sizeof(hull_min));
	}

	public void get_hull_max(float hull_max[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.hull_max, hull_max, sizeof(hull_max));
	}

	public void get_view_bbmin(float view_bbmin[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.view_bbmin, view_bbmin, sizeof(view_bbmin));
	}

	public void get_view_bbmax(float view_bbmax[3])
	{
		this.Validate();
		
		LoadArrayFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.view_bbmax, view_bbmax, sizeof(view_bbmax));
	}

	property int flags
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flags' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flags, NumberType_Int32);
		}
	}

	property int numbones
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numbones' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numbones, NumberType_Int32);
		}
	}

	property int boneindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'boneindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.boneindex, NumberType_Int32);
		}
	}

	property int numbonecontrollers
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numbonecontrollers' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numbonecontrollers, NumberType_Int32);
		}
	}

	property int bonecontrollerindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bonecontrollerindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.bonecontrollerindex, NumberType_Int32);
		}
	}

	property int numhitboxsets
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numhitboxsets' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numhitboxsets, NumberType_Int32);
		}
	}

	property int hitboxsetindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'hitboxsetindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.hitboxsetindex, NumberType_Int32);
		}
	}

	property int numlocalanim
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalanim' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalanim, NumberType_Int32);
		}
	}

	property int localanimindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localanimindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localanimindex, NumberType_Int32);
		}
	}

	property int numlocalseq
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalseq' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalseq, NumberType_Int32);
		}
	}

	property int localseqindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localseqindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localseqindex, NumberType_Int32);
		}
	}

	property int activitylistversion
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'activitylistversion' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.activitylistversion, NumberType_Int32);
		}
	}

	property int eventsindexed
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'eventsindexed' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.eventsindexed, NumberType_Int32);
		}
	}

	property int numtextures
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numtextures' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numtextures, NumberType_Int32);
		}
	}

	property int textureindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'textureindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.textureindex, NumberType_Int32);
		}
	}

	property int numcdtextures
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numcdtextures' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numcdtextures, NumberType_Int32);
		}
	}

	property int cdtextureindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'cdtextureindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.cdtextureindex, NumberType_Int32);
		}
	}

	property int numskinref
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numskinref' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numskinref, NumberType_Int32);
		}
	}

	property int numskinfamilies
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numskinfamilies' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numskinfamilies, NumberType_Int32);
		}
	}

	property int skinindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'skinindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.skinindex, NumberType_Int32);
		}
	}

	property int numbodyparts
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numbodyparts' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numbodyparts, NumberType_Int32);
		}
	}

	property int bodypartindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bodypartindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.bodypartindex, NumberType_Int32);
		}
	}

	property int numlocalattachments
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalattachments' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalattachments, NumberType_Int32);
		}
	}

	property int localattachmentindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localattachmentindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localattachmentindex, NumberType_Int32);
		}
	}

	property int numlocalnodes
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalnodes' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalnodes, NumberType_Int32);
		}
	}

	property int localnodeindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localnodeindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localnodeindex, NumberType_Int32);
		}
	}

	property int localnodenameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localnodenameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localnodenameindex, NumberType_Int32);
		}
	}

	property int numflexdesc
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numflexdesc' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numflexdesc, NumberType_Int32);
		}
	}

	property int flexdescindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flexdescindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flexdescindex, NumberType_Int32);
		}
	}

	property int numflexcontrollers
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numflexcontrollers' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numflexcontrollers, NumberType_Int32);
		}
	}

	property int flexcontrollerindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flexcontrollerindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flexcontrollerindex, NumberType_Int32);
		}
	}

	property int numflexrules
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numflexrules' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numflexrules, NumberType_Int32);
		}
	}

	property int flexruleindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flexruleindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flexruleindex, NumberType_Int32);
		}
	}

	property int numikchains
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numikchains' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numikchains, NumberType_Int32);
		}
	}

	property int ikchainindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'ikchainindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.ikchainindex, NumberType_Int32);
		}
	}

	property int nummouths
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'nummouths' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.nummouths, NumberType_Int32);
		}
	}

	property int mouthindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'mouthindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.mouthindex, NumberType_Int32);
		}
	}

	property int numlocalposeparameters
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalposeparameters' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalposeparameters, NumberType_Int32);
		}
	}

	property int localposeparamindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localposeparamindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localposeparamindex, NumberType_Int32);
		}
	}

	property int surfacepropindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'surfacepropindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.surfacepropindex, NumberType_Int32);
		}
	}

	property int keyvalueindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'keyvalueindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.keyvalueindex, NumberType_Int32);
		}
	}

	property int keyvaluesize
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'keyvaluesize' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.keyvaluesize, NumberType_Int32);
		}
	}

	property int numlocalikautoplaylocks
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numlocalikautoplaylocks' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numlocalikautoplaylocks, NumberType_Int32);
		}
	}

	property int localikautoplaylockindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'localikautoplaylockindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.localikautoplaylockindex, NumberType_Int32);
		}
	}

	property float mass
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'mass' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.mass, NumberType_Int32);
		}
	}

	property int contents
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'contents' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.contents, NumberType_Int32);
		}
	}

	property int numincludemodels
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numincludemodels' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numincludemodels, NumberType_Int32);
		}
	}

	property int includemodelindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'includemodelindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.includemodelindex, NumberType_Int32);
		}
	}

	property int unused_virtualModel
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'unused_virtualModel' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.unused_virtualModel, NumberType_Int32);
		}
	}

	property int szanimblocknameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'szanimblocknameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.szanimblocknameindex, NumberType_Int32);
		}
	}

	property int numanimblocks
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numanimblocks' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numanimblocks, NumberType_Int32);
		}
	}

	property int animblockindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'animblockindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.animblockindex, NumberType_Int32);
		}
	}

	property int unused_animblockModel
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'unused_animblockModel' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.unused_animblockModel, NumberType_Int32);
		}
	}

	property int bonetablebynameindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'bonetablebynameindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.bonetablebynameindex, NumberType_Int32);
		}
	}

	property int unused_pVertexBase
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'unused_pVertexBase' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.unused_pVertexBase, NumberType_Int32);
		}
	}

	property int unused_pIndexBase
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'unused_pIndexBase' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.unused_pIndexBase, NumberType_Int32);
		}
	}

	property int constdirectionallightdot
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'constdirectionallightdot' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.constdirectionallightdot, NumberType_Int8);
		}
	}

	property int rootLOD
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'rootLOD' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.rootLOD, NumberType_Int8);
		}
	}

	property int numAllowedRootLODs
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numAllowedRootLODs' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numAllowedRootLODs, NumberType_Int8);
		}
	}

	property int unused
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'unused' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.unused, NumberType_Int8);
		}
	}

	property int unused4
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'unused4' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.unused4, NumberType_Int32);
		}
	}

	property int numflexcontrollerui
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'numflexcontrollerui' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.numflexcontrollerui, NumberType_Int32);
		}
	}

	property int flexcontrolleruiindex
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flexcontrolleruiindex' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flexcontrolleruiindex, NumberType_Int32);
		}
	}

	property float flVertAnimFixedPointScale
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'flVertAnimFixedPointScale' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.flVertAnimFixedPointScale, NumberType_Int32);
		}
	}

	property int surfacepropLookup
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'surfacepropLookup' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.surfacepropLookup, NumberType_Int32);
		}
	}

	property int studiohdr2index
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'studiohdr2index' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.studiohdr2index, NumberType_Int32);
		}
	}

	property int unused2
	{
		public get()
		{
			this.Validate();
			
			// 'this' [base] + 'unused2' [offset]
			return LoadFromAddress(view_as<Address>(this) + g_Offsets.studiohdr_t.unused2, NumberType_Int32);
		}
	}

}

// test

PrintToServer("id: %i", studio_hdr.id);

PrintToServer("version: %i", studio_hdr.version);

PrintToServer("checksum: %i", studio_hdr.checksum);

char name[64];
studio_hdr.get_name(name);
PrintToServer("name: ", );

PrintToServer("length: %i", studio_hdr.length);

float eyeposition[3];
studio_hdr.get_eyeposition(eyeposition);
PrintToServer("eyeposition: %f %f %f ", eyeposition[0], eyeposition[1], eyeposition[2]);

float illumposition[3];
studio_hdr.get_illumposition(illumposition);
PrintToServer("illumposition: %f %f %f ", illumposition[0], illumposition[1], illumposition[2]);

float hull_min[3];
studio_hdr.get_hull_min(hull_min);
PrintToServer("hull_min: %f %f %f ", hull_min[0], hull_min[1], hull_min[2]);

float hull_max[3];
studio_hdr.get_hull_max(hull_max);
PrintToServer("hull_max: %f %f %f ", hull_max[0], hull_max[1], hull_max[2]);

float view_bbmin[3];
studio_hdr.get_view_bbmin(view_bbmin);
PrintToServer("view_bbmin: %f %f %f ", view_bbmin[0], view_bbmin[1], view_bbmin[2]);

float view_bbmax[3];
studio_hdr.get_view_bbmax(view_bbmax);
PrintToServer("view_bbmax: %f %f %f ", view_bbmax[0], view_bbmax[1], view_bbmax[2]);

PrintToServer("flags: %i", studio_hdr.flags);

PrintToServer("numbones: %i", studio_hdr.numbones);

PrintToServer("boneindex: %i", studio_hdr.boneindex);

PrintToServer("numbonecontrollers: %i", studio_hdr.numbonecontrollers);

PrintToServer("bonecontrollerindex: %i", studio_hdr.bonecontrollerindex);

PrintToServer("numhitboxsets: %i", studio_hdr.numhitboxsets);

PrintToServer("hitboxsetindex: %i", studio_hdr.hitboxsetindex);

PrintToServer("numlocalanim: %i", studio_hdr.numlocalanim);

PrintToServer("localanimindex: %i", studio_hdr.localanimindex);

PrintToServer("numlocalseq: %i", studio_hdr.numlocalseq);

PrintToServer("localseqindex: %i", studio_hdr.localseqindex);

PrintToServer("activitylistversion: %i", studio_hdr.activitylistversion);

PrintToServer("eventsindexed: %i", studio_hdr.eventsindexed);

PrintToServer("numtextures: %i", studio_hdr.numtextures);

PrintToServer("textureindex: %i", studio_hdr.textureindex);

PrintToServer("numcdtextures: %i", studio_hdr.numcdtextures);

PrintToServer("cdtextureindex: %i", studio_hdr.cdtextureindex);

PrintToServer("numskinref: %i", studio_hdr.numskinref);

PrintToServer("numskinfamilies: %i", studio_hdr.numskinfamilies);

PrintToServer("skinindex: %i", studio_hdr.skinindex);

PrintToServer("numbodyparts: %i", studio_hdr.numbodyparts);

PrintToServer("bodypartindex: %i", studio_hdr.bodypartindex);

PrintToServer("numlocalattachments: %i", studio_hdr.numlocalattachments);

PrintToServer("localattachmentindex: %i", studio_hdr.localattachmentindex);

PrintToServer("numlocalnodes: %i", studio_hdr.numlocalnodes);

PrintToServer("localnodeindex: %i", studio_hdr.localnodeindex);

PrintToServer("localnodenameindex: %i", studio_hdr.localnodenameindex);

PrintToServer("numflexdesc: %i", studio_hdr.numflexdesc);

PrintToServer("flexdescindex: %i", studio_hdr.flexdescindex);

PrintToServer("numflexcontrollers: %i", studio_hdr.numflexcontrollers);

PrintToServer("flexcontrollerindex: %i", studio_hdr.flexcontrollerindex);

PrintToServer("numflexrules: %i", studio_hdr.numflexrules);

PrintToServer("flexruleindex: %i", studio_hdr.flexruleindex);

PrintToServer("numikchains: %i", studio_hdr.numikchains);

PrintToServer("ikchainindex: %i", studio_hdr.ikchainindex);

PrintToServer("nummouths: %i", studio_hdr.nummouths);

PrintToServer("mouthindex: %i", studio_hdr.mouthindex);

PrintToServer("numlocalposeparameters: %i", studio_hdr.numlocalposeparameters);

PrintToServer("localposeparamindex: %i", studio_hdr.localposeparamindex);

PrintToServer("surfacepropindex: %i", studio_hdr.surfacepropindex);

PrintToServer("keyvalueindex: %i", studio_hdr.keyvalueindex);

PrintToServer("keyvaluesize: %i", studio_hdr.keyvaluesize);

PrintToServer("numlocalikautoplaylocks: %i", studio_hdr.numlocalikautoplaylocks);

PrintToServer("localikautoplaylockindex: %i", studio_hdr.localikautoplaylockindex);

PrintToServer("mass: %f", studio_hdr.mass);

PrintToServer("contents: %i", studio_hdr.contents);

PrintToServer("numincludemodels: %i", studio_hdr.numincludemodels);

PrintToServer("includemodelindex: %i", studio_hdr.includemodelindex);

PrintToServer("unused_virtualModel: %i", studio_hdr.unused_virtualModel);

PrintToServer("szanimblocknameindex: %i", studio_hdr.szanimblocknameindex);

PrintToServer("numanimblocks: %i", studio_hdr.numanimblocks);

PrintToServer("animblockindex: %i", studio_hdr.animblockindex);

PrintToServer("unused_animblockModel: %i", studio_hdr.unused_animblockModel);

PrintToServer("bonetablebynameindex: %i", studio_hdr.bonetablebynameindex);

PrintToServer("unused_pVertexBase: %i", studio_hdr.unused_pVertexBase);

PrintToServer("unused_pIndexBase: %i", studio_hdr.unused_pIndexBase);

PrintToServer("constdirectionallightdot: %i", studio_hdr.constdirectionallightdot);

PrintToServer("rootLOD: %i", studio_hdr.rootLOD);

PrintToServer("numAllowedRootLODs: %i", studio_hdr.numAllowedRootLODs);

PrintToServer("unused: %i", studio_hdr.unused);

PrintToServer("unused4: %i", studio_hdr.unused4);

PrintToServer("numflexcontrollerui: %i", studio_hdr.numflexcontrollerui);

PrintToServer("flexcontrolleruiindex: %i", studio_hdr.flexcontrolleruiindex);

PrintToServer("flVertAnimFixedPointScale: %f", studio_hdr.flVertAnimFixedPointScale);

PrintToServer("surfacepropLookup: %i", studio_hdr.surfacepropLookup);

PrintToServer("studiohdr2index: %i", studio_hdr.studiohdr2index);

PrintToServer("unused2: %i", studio_hdr.unused2);

// mstudiobone_t
// mstudiobonecontroller_t
// mstudiohitboxset_t
// mstudiobbox_t
// mstudioanimdesc_t
// mstudioseqdesc_t
// mstudiotexture_t
// mstudiobodyparts_t
// mstudioattachment_t
// mstudioflexdesc_t
// mstudioflexcontroller_t
// mstudioflexrule_t
// mstudioikchain_t
// mstudiomouth_t
// mstudioposeparamdesc_t
// mstudioiklock_t
// mstudiomodelgroup_t
// mstudioanimblock_t
// mstudioflexcontrollerui_t
// studiohdr2_t