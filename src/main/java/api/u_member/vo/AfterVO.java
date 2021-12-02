package api.u_member.vo;

public class AfterVO {
	private String af_idx, tr_id, u_mem_id, stat, content;

	public AfterVO(String af_idx, String tr_id, String u_mem_id, String stat, String content) {
		super();
		this.af_idx = af_idx;
		this.tr_id = tr_id;
		this.u_mem_id = u_mem_id;
		this.stat = stat;
		this.content = content;
	}

	public String getAf_idx() {
		return af_idx;
	}

	public void setAf_idx(String af_idx) {
		this.af_idx = af_idx;
	}

	public String getTr_id() {
		return tr_id;
	}

	public void setTr_id(String tr_id) {
		this.tr_id = tr_id;
	}

	public String getU_mem_id() {
		return u_mem_id;
	}

	public void setU_mem_id(String u_mem_id) {
		this.u_mem_id = u_mem_id;
	}

	public String getStat() {
		return stat;
	}

	public void setStat(String stat) {
		this.stat = stat;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	
}
