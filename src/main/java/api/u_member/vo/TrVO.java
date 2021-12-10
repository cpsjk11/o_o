package api.u_member.vo;

public class TrVO {

	private String traning_id, content, price, personnel, term, manager, stat;

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
}
