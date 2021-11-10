package hrd.vo;

public class IvossVO {
	private String 	CSTRMR_NM,
					FCLTY_AR_CN,
					HOLD_QY,
					OCU_ACPTN_CN,
					TRAFCLTY_NM;
	
	

	public IvossVO(String cSTRMR_NM, String fCLTY_AR_CN, String hOLD_QY, String oCU_ACPTN_CN, String tRAFCLTY_NM) {
		super();
		CSTRMR_NM = cSTRMR_NM;
		FCLTY_AR_CN = fCLTY_AR_CN;
		HOLD_QY = hOLD_QY;
		OCU_ACPTN_CN = oCU_ACPTN_CN;
		TRAFCLTY_NM = tRAFCLTY_NM;
	}

	public String getCSTRMR_NM() {
		return CSTRMR_NM;
	}

	public void setCSTRMR_NM(String cSTRMR_NM) {
		CSTRMR_NM = cSTRMR_NM;
	}

	public String getFCLTY_AR_CN() {
		return FCLTY_AR_CN;
	}

	public void setFCLTY_AR_CN(String fCLTY_AR_CN) {
		FCLTY_AR_CN = fCLTY_AR_CN;
	}

	public String getHOLD_QY() {
		return HOLD_QY;
	}

	public void setHOLD_QY(String hOLD_QY) {
		HOLD_QY = hOLD_QY;
	}

	public String getOCU_ACPTN_CN() {
		return OCU_ACPTN_CN;
	}

	public void setOCU_ACPTN_CN(String oCU_ACPTN_CN) {
		OCU_ACPTN_CN = oCU_ACPTN_CN;
	}

	public String getTRAFCLTY_NM() {
		return TRAFCLTY_NM;
	}

	public void setTRAFCLTY_NM(String tRAFCLTY_NM) {
		TRAFCLTY_NM = tRAFCLTY_NM;
	}

	
	
	
}
