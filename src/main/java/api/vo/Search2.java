package api.vo;

public class Search2 {
 private String srchTrprId,srchTrprDegr,subject,srchTraProcessNm,addr,title;
 
 
 
 

public Search2(String srchTrprId, String srchTrprDegr, String subject, String srchTraProcessNm, String addr,
		String title) {
	this.srchTrprId = srchTrprId;
	this.srchTrprDegr = srchTrprDegr;
	this.subject = subject;
	this.srchTraProcessNm = srchTraProcessNm;
	this.addr = addr;
	this.title = title;
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
 
 
 

 
}
