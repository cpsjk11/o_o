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
	
	// 아이디가 있다면 로그인으로! AND 아이디 중복 확인
	public String searchUser(String id) {
		return ss.selectOne("umem.searchUser", id);
	}
	
	// 이메일 중복 확인하는 기능
	public String searchEmail(String email) {
		return ss.selectOne("umem.searchEmail", email);
	}
	
	// 비밀번호 찾기 시 아이디와 이메일을 받아 해당하는 정보가 있는지 없는지 확인하는 기능
	public String searchPwEmail(String id , String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("email", email);
		map.put("id", id);
		
		return ss.selectOne("umem.searchPwEmail",map);
	}
	
	// 회원 로그인
	public UmemVO login(String id, String pw) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		return ss.selectOne("umem.login", map);
	}
	
	// 사용자 아이디 찾아주는 기능
	public String findID(String email) {
		return ss.selectOne("umem.findID", email);
	}
	
	
	// 사용자 비밀번호 변경 및 재발급 기능
	public int findPW(String id, String pw) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("id", id);
		map.put("pw", pw);
		
		return ss.update("umem.pwUpdate", map);
	}
	
}
