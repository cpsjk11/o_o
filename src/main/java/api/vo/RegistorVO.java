package api.vo;

public class RegistorVO {
	private String a_idx, tr_id, u_mem_id, u_name, u_birth, u_email, u_phone, u_addr, stat;
	
	public RegistorVO(String a_idx, String tr_id, String u_mem_id, String u_name, String u_birth, String u_email,
			String u_phone, String u_addr, String stat) {
		super();
		this.a_idx = a_idx;
		this.tr_id = tr_id;
		this.u_mem_id = u_mem_id;
		this.u_name = u_name;
		this.u_birth = u_birth;
		this.u_email = u_email;
		this.u_phone = u_phone;
		this.u_addr = u_addr;
		this.stat = stat;
	}

	public String getA_idx() {
		return a_idx;
	}

	public void setA_idx(String a_idx) {
		this.a_idx = a_idx;
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

	public String getU_name() {
		return u_name;
	}

	public void setU_name(String u_name) {
		this.u_name = u_name;
	}

	public String getU_birth() {
		return u_birth;
	}

	public void setU_birth(String u_birth) {
		this.u_birth = u_birth;
	}

	public String getU_email() {
		return u_email;
	}

	public void setU_email(String u_email) {
		this.u_email = u_email;
	}

	public String getU_phone() {
		return u_phone;
	}

	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}

	public String getU_addr() {
		return u_addr;
	}

	public void setU_addr(String u_addr) {
		this.u_addr = u_addr;
	}

	public String getStat() {
		return stat;
	}

	public void setStat(String stat) {
		this.stat = stat;
	}
	
	
}
