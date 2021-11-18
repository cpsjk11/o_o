package api.vo;

public class SearchVO {
	/*
 	목록 검색시 필요한 파라미터 들
 	Ncs직무 : srchKeco1,srchKeco2,srchKeco3
	srchKeco1 : 대분류 
	srchKeco2 : 중분류 
	srchKeco3 : 세분류(소분류)
	
	훈련지역 : srchTraArea1, srchTraArea2
		 대분류          중분류
	
	훈련기관 : srchTraOrganNm
		 Ex : srchTraOrganNm=increpas
	
	훈련과정 : srchTraProcessNm
		 Ex : srchTraProcessNm=increpas
	
	정렬기준 : sortCol
		 Ex : sortCol=TR_STT_DT     // 훈련시작일
		 Ex : sortCol=EI_EMPL_RATE // 취업률
		 Ex : sortCol=TOT_FXNUM   // 모집인원
		 Ex : sortCol=TR_NM_i        // 훈련과정명
	
	훈련유형 : crseTracseSe
	C0055 : 내일배움카드(구직자)
	C0054 : 국가기간전략산업직종
	C0068 : 컨소시엄 채용예정자
	C0053 : 지역구직자
	C0059 : 청년취업아카데미
	Y0054 : 4차산업혁명인력양성
	Z       : 중장년특화과정
	C0077 : 지역맞춤형일자리창출지원
	C0074 : 장애인직업능력개발훈련
	C0075 : 건설일용근로자기능향상
	C0071 : 베이비부머과정(폴리텍대학)
	C0069 : 기능사과정(폴리텍대학)
	C0070 : 기능장과정(폴리텍대학)
	C0072 : 여성재취업과정(폴리텍대학)
 
 
 */
	 
	private String 	 srchKeco1,
					 srchKeco2,
					 srchKeco3,
					 srchKeco4,
					 srchTraArea1,
					 srchTraArea2,
					 srchTraOrganNm,
					 srchTraProcessNm,
					 sortCol,
					 crseTracseSe,
					 srchTraStDt,
					 srchTraEndDt,
					 srchTraGbn,
					 srchTraType,
					 sort;			 					 

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getSrchTraGbn() {
		return srchTraGbn;
	}

	public void setSrchTraGbn(String srchTraGbn) {
		this.srchTraGbn = srchTraGbn;
	}

	public String getSrchTraType() {
		return srchTraType;
	}

	public void setSrchTraType(String srchTraType) {
		this.srchTraType = srchTraType;
	}

	public String getSrchKeco1() {
		return srchKeco1;
	}

	public void setSrchKeco1(String srchKeco1) {
		this.srchKeco1 = srchKeco1;
	}

	public String getSrchKeco2() {
		return srchKeco2;
	}

	public void setSrchKeco2(String srchKeco2) {
		this.srchKeco2 = srchKeco2;
	}

	public String getSrchKeco3() {
		return srchKeco3;
	}

	public void setSrchKeco3(String srchKeco3) {
		this.srchKeco3 = srchKeco3;
	}

	public String getSrchTraArea1() {
		return srchTraArea1;
	}

	public void setSrchTraArea1(String srchTraArea1) {
		this.srchTraArea1 = srchTraArea1;
	}

	public String getSrchTraArea2() {
		return srchTraArea2;
	}

	public void setSrchTraArea2(String srchTraArea2) {
		this.srchTraArea2 = srchTraArea2;
	}

	public String getSrchTraOrganNm() {
		return srchTraOrganNm;
	}

	public void setSrchTraOrganNm(String srchTraOrganNm) {
		this.srchTraOrganNm = srchTraOrganNm;
	}

	public String getSrchTraProcessNm() {
		return srchTraProcessNm;
	}

	public void setSrchTraProcessNm(String srchTraProcessNm) {
		this.srchTraProcessNm = srchTraProcessNm;
	}

	public String getSortCol() {
		return sortCol;
	}

	public void setSortCol(String sortCol) {
		this.sortCol = sortCol;
	}

	public String getCrseTracseSe() {
		return crseTracseSe;
	}

	public void setCrseTracseSe(String crseTracseSe) {
		this.crseTracseSe = crseTracseSe;
	}

	public String getSrchKeco4() {
		return srchKeco4;
	}

	public void setSrchKeco4(String srchKeco4) {
		this.srchKeco4 = srchKeco4;
	}

	public String getSrchTraStDt() {
		return srchTraStDt;
	}

	public void setSrchTraStDt(String srchTraStDt) {
		this.srchTraStDt = srchTraStDt;
	}

	public String getSrchTraEndDt() {
		return srchTraEndDt;
	}

	public void setSrchTraEndDt(String srchTraEndDt) {
		this.srchTraEndDt = srchTraEndDt;
	}
	
}
