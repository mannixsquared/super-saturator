#pragma once

// These will improve the readability of the connection definition

#define getT(Idx) template get<Idx>()
#define connectT(Idx, target) template connect<Idx>(target)
#define getParameterT(Idx) template getParameter<Idx>()
#define setParameterT(Idx, value) template setParameter<Idx>(value)
#define setParameterWT(Idx, value) template setWrapParameter<Idx>(value)
using namespace scriptnode;
using namespace snex;
using namespace snex::Types;

namespace WaveShaper_impl
{
// ==============================| Node & Parameter type declarations |==============================

using band1_t = container::chain<parameter::empty, 
                                 wrap::fix<2, jdsp::jlinkwitzriley>>;
template <int NumVoices> struct Distortion
{
	SNEX_NODE(Distortion);
	float drive = 1.0f;
	float chebyshev(int n, float x) {
		if (n == 0) {
				return 1.0f;
			} else if (n == 1) {
			return x;
			} else {
			float Tn_2 = 1.0f; 	// T_0(x)
			float Tn_1 = x; 	// T_1(x)
			float Tn = 0.0f;
			for (int i = 2; i <= n; i++) {
					Tn = 2.0f * x * Tn_1 - Tn_2;
				Tn_2 = Tn_1;
				Tn_1 = Tn;
			}
			return Tn;
		}
	}
	float getSample(float x)
	{
		float s = drive * x / (1.0f + drive * Math.abs(x));
		return s + 0.1f * chebyshev(2, x) + 0.1f * chebyshev(4, x) + 0.05f * chebyshev(6, x) + 0.05f * chebyshev(8, x);
	}
	// These functions are the glue code that call the function above
	template <typename T> void process(T& data)
	{
		for(auto ch: data)
		{
			for(auto& s: data.toChannelData(ch))
			{
				s = getSample(s);
			}
		}
	}
	template <typename T> void processFrame(T& data)
	{
		for(auto& s: data)
			s = getSample(s);
	}
	void reset()
	{
	}
	void prepare(PrepareSpecs ps)
	{
	}
	void setExternalData(const ExternalData& d, int index)
	{
	}
	template <int P> void setParameter(double v)
	{
		drive = (float) v;
	}
};

template <int NV>
using snex_shaper_t = wrap::no_data<core::snex_shaper<Distortion<NV>>>;

template <int NV>
using band2_t = container::chain<parameter::empty, 
                                 wrap::fix<2, jdsp::jlinkwitzriley>, 
                                 routing::ms_encode, 
                                 snex_shaper_t<NV>, 
                                 routing::ms_decode>;

namespace freq_split3_t_parameters
{

using Band1 = parameter::chain<ranges::Identity, 
                               parameter::plain<jdsp::jlinkwitzriley, 0>, 
                               parameter::plain<jdsp::jlinkwitzriley, 0>>;

}

template <int NV>
using freq_split3_t = container::split<freq_split3_t_parameters::Band1, 
                                       wrap::fix<2, band1_t>, 
                                       band2_t<NV>>;

namespace WaveShaper_t_parameters
{
// Parameter list for WaveShaper_impl::WaveShaper_t ------------------------------------------------

template <int NV>
using Frequency = parameter::plain<WaveShaper_impl::freq_split3_t<NV>, 
                                   0>;
template <int NV>
using Drive = parameter::plain<WaveShaper_impl::snex_shaper_t<NV>, 
                               0>;
template <int NV>
using WaveShaper_t_plist = parameter::list<Frequency<NV>, Drive<NV>>;
}

template <int NV>
using WaveShaper_t_ = container::chain<WaveShaper_t_parameters::WaveShaper_t_plist<NV>, 
                                       wrap::fix<2, freq_split3_t<NV>>>;

// =================================| Root node initialiser class |=================================

template <int NV> struct instance: public WaveShaper_impl::WaveShaper_t_<NV>
{
	
	struct metadata
	{
		static const int NumTables = 0;
		static const int NumSliderPacks = 0;
		static const int NumAudioFiles = 0;
		static const int NumFilters = 0;
		static const int NumDisplayBuffers = 0;
		
		SNEX_METADATA_ID(WaveShaper);
		SNEX_METADATA_NUM_CHANNELS(2);
		SNEX_METADATA_ENCODED_PARAMETERS(34)
		{
			0x005B, 0x0000, 0x4600, 0x6572, 0x7571, 0x6E65, 0x7963, 0x0000, 
            0xA000, 0x0041, 0x9C40, 0x0046, 0xA000, 0x1A41, 0x6B6C, 0x003E, 
            0x0000, 0x5B00, 0x0001, 0x0000, 0x7244, 0x7669, 0x0065, 0x0000, 
            0x3F80, 0x0000, 0x4120, 0x0000, 0x3F80, 0x0000, 0x3F80, 0x0000, 
            0x0000, 0x0000
		};
	};
	
	instance()
	{
		// Node References -------------------------------------------------------------------------
		
		auto& freq_split3 = this->getT(0);                 // WaveShaper_impl::freq_split3_t<NV>
		auto& band1 = this->getT(0).getT(0);               // WaveShaper_impl::band1_t
		auto& lr1_1 = this->getT(0).getT(0).getT(0);       // jdsp::jlinkwitzriley
		auto& band2 = this->getT(0).getT(1);               // WaveShaper_impl::band2_t<NV>
		auto& lr2_1 = this->getT(0).getT(1).getT(0);       // jdsp::jlinkwitzriley
		auto& ms_encode = this->getT(0).getT(1).getT(1);   // routing::ms_encode
		auto& snex_shaper = this->getT(0).getT(1).getT(2); // WaveShaper_impl::snex_shaper_t<NV>
		auto& ms_decode = this->getT(0).getT(1).getT(3);   // routing::ms_decode
		
		// Parameter Connections -------------------------------------------------------------------
		
		auto& Band1_p = freq_split3.getParameterT(0);
		Band1_p.connectT(0, lr1_1);                      // Band1 -> lr1_1::Frequency
		Band1_p.connectT(1, lr2_1);                      // Band1 -> lr2_1::Frequency
		this->getParameterT(0).connectT(0, freq_split3); // Frequency -> freq_split3::Band1
		
		this->getParameterT(1).connectT(0, snex_shaper); // Drive -> snex_shaper::Drive
		
		// Default Values --------------------------------------------------------------------------
		
		; // freq_split3::Band1 is automated
		
		;                           // lr1_1::Frequency is automated
		lr1_1.setParameterT(1, 0.); // jdsp::jlinkwitzriley::Type
		
		;                           // lr2_1::Frequency is automated
		lr2_1.setParameterT(1, 1.); // jdsp::jlinkwitzriley::Type
		
		; // snex_shaper::Drive is automated
		
		this->setParameterT(0, 20.);
		this->setParameterT(1, 1.);
		this->setExternalData({}, -1);
	}
	~instance() override
	{
		// Cleanup external data references --------------------------------------------------------
		
		this->setExternalData({}, -1);
	}
	
	static constexpr bool isPolyphonic() { return NV > 1; };
	
	static constexpr bool hasTail() { return true; };
	
	static constexpr bool isSuspendedOnSilence() { return false; };
	
	void setExternalData(const ExternalData& b, int index)
	{
		// External Data Connections ---------------------------------------------------------------
		
		this->getT(0).getT(1).getT(2).setExternalData(b, index); // WaveShaper_impl::snex_shaper_t<NV>
	}
};
}

#undef getT
#undef connectT
#undef setParameterT
#undef setParameterWT
#undef getParameterT
// ======================================| Public Definition |======================================

namespace project
{
// polyphonic template declaration

template <int NV>
using WaveShaper = wrap::node<WaveShaper_impl::instance<NV>>;
}


