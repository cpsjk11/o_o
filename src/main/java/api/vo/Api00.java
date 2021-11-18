package api.vo;

public class Api00 {
	private String RSLT_CODE, // 코드 값
				   RSLT_NAME; // 코드 명

	
	public Api00(String rSLT_CODE, String rSLT_NAME) {
		super();
		RSLT_CODE = rSLT_CODE;
		RSLT_NAME = rSLT_NAME;
	}

	public String getRSLT_CODE() {
		return RSLT_CODE;
	}

	public void setRSLT_CODE(String rSLT_CODE) {
		RSLT_CODE = rSLT_CODE;
	}

	public String getRSLT_NAME() {
		return RSLT_NAME;
	}

	public void setRSLT_NAME(String rSLT_NAME) {
		RSLT_NAME = rSLT_NAME;
	}
	
}
