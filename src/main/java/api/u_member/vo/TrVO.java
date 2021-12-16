package api.u_member.vo;

import java.sql.Date;

public class TrVO {

	private String traning_id, content, price, personnel, term, manager, stat, hit, tr_degr, imageCode, addr, u_id;
	

	public TrVO(){}

	public TrVO(String traning_id, String content, String price, String personnel, String term, String manager,
			String stat) {
		this.traning_id = traning_id;
		this.content = content;
		this.price = price;
		this.personnel = personnel;
		this.term = term;
		this.manager = manager;
		this.stat = stat;

	}
	
	public TrVO(String traning_id, String content, String price, String personnel, String term, String manager,
			String stat, String hit, String tr_degr, String imageCode, String addr) {
		super();
		this.traning_id = traning_id;
		this.content = content;
		this.price = price;
		this.personnel = personnel;
		this.term = term;
		this.manager = manager;
		this.stat = stat;
		this.hit = hit;
		this.tr_degr = tr_degr;
		this.imageCode = imageCode;
		this.addr = addr;
	
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getImageCode() {
		return imageCode;
	}

	public void setImageCode(String imageCode) {
		this.imageCode = imageCode;
	}

	public String getTr_degr() {
		return tr_degr;
	}

	public void setTr_degr(String tr_degr) {
		this.tr_degr = tr_degr;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getTraning_id() {
		return traning_id;
	}

	public void setTraning_id(String traning_id) {
		this.traning_id = traning_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getPersonnel() {
		return personnel;
	}

	public void setPersonnel(String personnel) {
		this.personnel = personnel;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
	}

	public String getStat() {
		return stat;
	}

	public void setStat(String stat) {
		this.stat = stat;
	}
	
	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
}
