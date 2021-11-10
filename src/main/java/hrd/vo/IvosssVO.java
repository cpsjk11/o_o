package hrd.vo;

public class IvosssVO {
	private String 	CSTMR_NM,
					EQPMN_NM,
					HOLD_QY;

	public IvosssVO(String cSTMR_NM, String eQPMN_NM, String hOLD_QY) {
		super();
		CSTMR_NM = cSTMR_NM;
		EQPMN_NM = eQPMN_NM;
		HOLD_QY = hOLD_QY;
	}

	public String getCSTMR_NM() {
		return CSTMR_NM;
	}

	public void setCSTMR_NM(String cSTMR_NM) {
		CSTMR_NM = cSTMR_NM;
	}

	public String getEQPMN_NM() {
		return EQPMN_NM;
	}

	public void setEQPMN_NM(String eQPMN_NM) {
		EQPMN_NM = eQPMN_NM;
	}

	public String getHOLD_QY() {
		return HOLD_QY;
	}

	public void setHOLD_QY(String hOLD_QY) {
		HOLD_QY = hOLD_QY;
	}
	
	
}
