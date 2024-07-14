namespace project
{

struct Saturator_networkdata: public scriptnode::dll::InterpretedNetworkData
{
	String getId() const override
	{
		return "Saturator";
	}
	bool isModNode() const override
	{
		return false;
	}
	String getNetworkData() const override
	{
		return "491.nT6K8CFCDzvC.XpEIUBHOxM9YHdGTDqD0IruFd.2IzoOrjP1Ur8b7AHXF8i4ZfXhOIkB9.vO.7C.q2M3kxmkEsjwf8x5g9RrXUNs5A38pFcHCcVshI3f2mxrAl2GuevqbhkQeHV5rFoWpwpNBuHrPCuTPmXpeCwCx4jhdND5bONlmhJ2A.iHCt1g2+REQHjXLz71vKyOUqehI0RSvReKwqp+hXDs.M3cyZ3skQ+5WIRiNfYdUEPkplOAeTPn6Nj2bnlTq4vWycHJzx.qxxWqjl3NMdd5zpiHQ67WfQQnezZmV2N1sUiUl0KErYrj+EKdZBQTSTwtMQSTdK5w0APYgMSNwpVuTNOf4ER8fPX6M4P9iTDz0Rpe1+vBcn1i5MM4SNm68D0R51aSZHqDRrq5bFfSfFWpyYl.BBnDRDTb.Q.PYRiGIixT+ghlYr+u+J7aR2v4PtxuL9YgS3kCv1Ac.yZAPr5tXkcRlyJxXP0PIkgLl1fDBq4wCdQFXTDahjCo51LbBHKsw1Lmi7FarZ2yADPrJ1uBfkIEeCsfB6ff3HNn.vbGpLNrgCrv7rJD3VYVPKvPXdBRdwtJz9T2ndlQBOlntrYrWbNzMAC.PkCcqcwkCECp.hUnH5tyOxASyPWsbNrFSGQ14AnGvWM";
	}
};
}

