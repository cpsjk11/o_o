package api.u_member.vo;

public class HelpVO {
	private String h_idx, tr_id, u_mem_id, stat, content;

	public HelpVO(String h_idx, String tr_id, String u_mem_id, String stat, String content) {
		super();
		this.h_idx = h_idx;
		this.tr_id = tr_id;
		this.u_mem_id = u_mem_id;
		this.stat = stat;
		this.content = content;
	}

	public String getH_idx() {
		return h_idx;
	}

	public void setH_idx(String h_idx) {
		this.h_idx = h_idx;
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
