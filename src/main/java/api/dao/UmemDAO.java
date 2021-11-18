package api.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import api.u_member.vo.UmemVO;

@Repository
public class UmemDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 회원가능 기능~!~!~!~!~!!!
	public int jogin(UmemVO uvo) {
		return ss.insert("umem.joing", uvo);
	}
	
	// 아이디가 있다면 로그인으로!
	public String searchUser(String name) {
		return ss.selectOne("umem.searchUser", name);
	}
	
	// 회원 로그인
	public UmemVO login(String id, String pw) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		return ss.selectOne("umem.login", map);
	}
	
}
