package api.u_member.vo;

public class LikeVO {
	private String l_idx, u_mem_id, tr_id, tr_name, tr_term, like_date, stat;
	


	public LikeVO(String l_idx, String u_mem_id, String tr_id, String tr_name, String tr_term, String like_date,
			String stat) {
		super();
		this.l_idx = l_idx;
		this.u_mem_id = u_mem_id;
		this.tr_id = tr_id;
		this.tr_name = tr_name;
		this.tr_term = tr_term;
		this.like_date = like_date;
		this.stat = stat;
	}

	public String getL_idx() {
		return l_idx;
	}

	public void setL_idx(String l_idx) {
		this.l_idx = l_idx;
	}

	public String getU_mem_id() {
		return u_mem_id;
	}

	public void setU_mem_id(String u_mem_id) {
		this.u_mem_id = u_mem_id;
	}

	public String getTr_id() {
		return tr_id;
	}

	public void setTr_id(String tr_id) {
		this.tr_id = tr_id;
	}

	public String getTr_name() {
		return tr_name;
	}

	public void setTr_name(String tr_name) {
		this.tr_name = tr_name;
	}

	public String getTr_term() {
		return tr_term;
	}

	public void setTr_term(String tr_term) {
		this.tr_term = tr_term;
	}

	public String getLike_date() {
		return like_date;
	}

	public void setLike_date(String like_date) {
		this.like_date = like_date;
	}

	public String getStat() {
		return stat;
	}

	public void setStat(String stat) {
		this.stat = stat;
	}
	
	
}
