package api.vo;

public class api_4_2 { // 훈련생 정보 2번째 객체 입니다.
	private String 	cstmr_id,
					cstmr_nm,
					cldr_de,
					kor_day_nm,
					atend_sttus_nm,
					lpsil_time,
					levrom_time;

	public api_4_2(String cstmr_id, String cstmr_nm, String cldr_de, String kor_day_nm, String atend_sttus_nm,
			String lpsil_time, String levrom_time) {
		super();
		this.cstmr_id = cstmr_id;
		this.cstmr_nm = cstmr_nm;
		this.cldr_de = cldr_de;
		this.kor_day_nm = kor_day_nm;
		this.atend_sttus_nm = atend_sttus_nm;
		this.lpsil_time = lpsil_time;
		this.levrom_time = levrom_time;
	}

	public String getCstmr_id() {
		return cstmr_id;
	}

	public void setCstmr_id(String cstmr_id) {
		this.cstmr_id = cstmr_id;
	}

	public String getCstmr_nm() {
		return cstmr_nm;
	}

	public void setCstmr_nm(String cstmr_nm) {
		this.cstmr_nm = cstmr_nm;
	}

	public String getCldr_de() {
		return cldr_de;
	}

	public void setCldr_de(String cldr_de) {
		this.cldr_de = cldr_de;
	}

	public String getKor_day_nm() {
		return kor_day_nm;
	}

	public void setKor_day_nm(String kor_day_nm) {
		this.kor_day_nm = kor_day_nm;
	}

	public String getAtend_sttus_nm() {
		return atend_sttus_nm;
	}

	public void setAtend_sttus_nm(String atend_sttus_nm) {
		this.atend_sttus_nm = atend_sttus_nm;
	}

	public String getLpsil_time() {
		return lpsil_time;
	}

	public void setLpsil_time(String lpsil_time) {
		this.lpsil_time = lpsil_time;
	}

	public String getLevrom_time() {
		return levrom_time;
	}

	public void setLevrom_time(String levrom_time) {
		this.levrom_time = levrom_time;
	}
	
	
}
