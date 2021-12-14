package api.vo;

public class Search2 {
 private String srchTrprId,srchTrprDegr,subject,srchTraProcessNm,addr,title,r_rank,start_date,end_date,imageCode;
 
 
 
 public Search2() {}

public Search2(String srchTrprId, String srchTrprDegr, String subject, String srchTraProcessNm, String addr,
		String title) {
	this.srchTrprId = srchTrprId;
	this.srchTrprDegr = srchTrprDegr;
	this.subject = subject;
	this.srchTraProcessNm = srchTraProcessNm;
	this.addr = addr;
	this.title = title;
}

public Search2(String srchTrprId, String srchTrprDegr, String subject, String srchTraProcessNm, String addr,
		String title, String imageCode) {
	this.srchTrprId = srchTrprId;
	this.srchTrprDegr = srchTrprDegr;
	this.subject = subject;
	this.srchTraProcessNm = srchTraProcessNm;
	this.addr = addr;
	this.title = title;
	this.imageCode = imageCode;
}

public String getImageCode() {
	return imageCode;
}

public void setImageCode(String imageCode) {
	this.imageCode = imageCode;
}

public String getR_rank() {
	return r_rank;
}


public void setR_rank(String r_rank) {
	this.r_rank = r_rank;
}


public String getSrchTrprId() {
	return srchTrprId;
}

public void setSrchTrprId(String srchTrprId) {
	this.srchTrprId = srchTrprId;
}

public String getSrchTrprDegr() {
	return srchTrprDegr;
}

public void setSrchTrprDegr(String srchTrprDegr) {
	this.srchTrprDegr = srchTrprDegr;
}

public String getSubject() {
	return subject;
}

public void setSubject(String subject) {
	this.subject = subject;
}

public String getSrchTraProcessNm() {
	return srchTraProcessNm;
}

public void setSrchTraProcessNm(String srchTraProcessNm) {
	this.srchTraProcessNm = srchTraProcessNm;
}

public String getAddr() {
	return addr;
}

public void setAddr(String addr) {
	this.addr = addr;
}

public String getTitle() {
	return title;
}

public void setTitle(String title) {
	this.title = title;
}

public String getStart_date() {
	return start_date;
}

public void setStart_date(String start_date) {
	this.start_date = start_date;
}

public String getEnd_date() {
	return end_date;
}

public void setEnd_date(String end_date) {
	this.end_date = end_date;
}
 
 
 

 
}
