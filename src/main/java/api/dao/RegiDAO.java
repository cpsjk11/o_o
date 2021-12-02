package api.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import api.u_member.vo.UmemVO;

@Repository
public class RegiDAO {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	int i = 1;
	
	// 수강신청 기능
	public int register(String u_id, String u_name, String u_birth, String u_email, String u_phone, String u_addr, String tr_id) {
		Map<String, Object> map = new HashMap<String, Object>();
		//map.put("a_idx", String.valueOf(i++));
		map.put("tr_id", tr_id);
		map.put("u_mem_id", u_id);
		map.put("u_name", u_name);
		map.put("u_birth", u_birth);
		map.put("u_email", u_email);
		map.put("u_phone", u_phone);
		map.put("u_addr", u_addr);
		map.put("stat", 0);
		
		return ss.insert("umem.register", map);
	}
}
