package api.vo;

public class api_4_1 { // 훈련생 정보 1첫번째 입니다.
	private String 	CSTMR_ID,
					CSTMR_NM,
					BRDE,
					STTUS_NM,
					TRACESE,
					TRANING_DE_CNT,
					ATEND_CNT,
					ABSNC_CNT,
					VCATN_CNT,
					OFLHD_CNT;

	public api_4_1(String cSTMR_ID, String cSTMR_NM, String bRDE, String sTTUS_NM, String tRACESE, String tRANING_DE_CNT,
			String aTEND_CNT, String aBSNC_CNT, String vCATN_CNT, String oFLHD_CNT) {
		super();
		CSTMR_ID = cSTMR_ID;
		CSTMR_NM = cSTMR_NM;
		BRDE = bRDE;
		STTUS_NM = sTTUS_NM;
		TRACESE = tRACESE;
		TRANING_DE_CNT = tRANING_DE_CNT;
		ATEND_CNT = aTEND_CNT;
		ABSNC_CNT = aBSNC_CNT;
		VCATN_CNT = vCATN_CNT;
		OFLHD_CNT = oFLHD_CNT;
	}

	public String getCSTMR_ID() {
		return CSTMR_ID;
	}

	public void setCSTMR_ID(String cSTMR_ID) {
		CSTMR_ID = cSTMR_ID;
	}

	public String getCSTMR_NM() {
		return CSTMR_NM;
	}

	public void setCSTMR_NM(String cSTMR_NM) {
		CSTMR_NM = cSTMR_NM;
	}

	public String getBRDE() {
		return BRDE;
	}

	public void setBRDE(String bRDE) {
		BRDE = bRDE;
	}

	public String getSTTUS_NM() {
		return STTUS_NM;
	}

	public void setSTTUS_NM(String sTTUS_NM) {
		STTUS_NM = sTTUS_NM;
	}

	public String getTRACESE() {
		return TRACESE;
	}

	public void setTRACESE(String tRACESE) {
		TRACESE = tRACESE;
	}

	public String getTRANING_DE_CNT() {
		return TRANING_DE_CNT;
	}

	public void setTRANING_DE_CNT(String tRANING_DE_CNT) {
		TRANING_DE_CNT = tRANING_DE_CNT;
	}

	public String getATEND_CNT() {
		return ATEND_CNT;
	}

	public void setATEND_CNT(String aTEND_CNT) {
		ATEND_CNT = aTEND_CNT;
	}

	public String getABSNC_CNT() {
		return ABSNC_CNT;
	}

	public void setABSNC_CNT(String aBSNC_CNT) {
		ABSNC_CNT = aBSNC_CNT;
	}

	public String getVCATN_CNT() {
		return VCATN_CNT;
	}

	public void setVCATN_CNT(String vCATN_CNT) {
		VCATN_CNT = vCATN_CNT;
	}

	public String getOFLHD_CNT() {
		return OFLHD_CNT;
	}

	public void setOFLHD_CNT(String oFLHD_CNT) {
		OFLHD_CNT = oFLHD_CNT;
	}
	
}
