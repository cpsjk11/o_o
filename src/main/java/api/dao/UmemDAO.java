package api.dao;

import java.sql.Date;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import api.action.CheckChart;
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
	
	
	public String companyName(String c_name) {
		return ss.selectOne("umem.companyName", c_name);
	}
	
	// 아이디가 있다면 로그인으로! AND 아이디 중복 확인
		public UmemVO user(String id) {
			return ss.selectOne("umem.user", id);
		}
	
	// 이메일 중복 확인하는 기능
	public String searchEmail(String email) {
		return ss.selectOne("umem.searchEmail", email);
	}
	// 사업자번호 중복 확인하는 기능
	public String searchCnum(String c_num) {
		return ss.selectOne("umem.searchCnum", c_num);
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
	
	// 회원 사용자의 수를 반환하는 기능
	public int finduser() {
		return ss.selectOne("umem.findUser");
	}
	
	// 기업 사용자의 수를 반환하는 기능
	public int findCompany() {
		return ss.selectOne("umem.findCompany");
	}
	
	public int findCompanySu() {
		return ss.selectOne("umem.findCompanySu");
	}
	
	// 사용자의 날짜별 가입인원을 반환하는 기능
	public List<Map<String, String>> searchDate(String yearMonth, String year, String stat) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("yearMonth", yearMonth);
		map.put("year", year);
		map.put("stat", stat);
		map.put("hi", "CONNECT BY LEVEL <= (TO_DATE('"+yearMonth+"','YY-MM-DD+') - TO_DATE('"+year+"','YY-MM-DD') + 1)");
		
		List<Map<String, String>> list = ss.selectList("umem.searchDate", map);
		
		return list;
	}
	// 모든 사용자의 정보를 반환하는 기능
	public UmemVO[] getList() {
		UmemVO[] uvo = null;
		List<UmemVO> list =  ss.selectList("umem.all");
		if(list != null && !list.isEmpty()) {
			uvo = new UmemVO[list.size()];
			list.toArray(uvo);
		}
		return uvo;
	}
	
	// 기업 일반 유저 회원의 보고싶을 수를 반환하는 기능
	public UmemVO[] getMember(String member, String begin, String end) {
		UmemVO[] uvo = null; 
		System.out.println(member);
		Map<String, String> map = new HashMap<String, String>();
		map.put("stat", member);
		map.put("begin", begin);
		map.put("end", end);
		
		List<UmemVO> list = ss.selectList("umem.getList",map);
		
		if(list != null && !list.isEmpty()) {
			uvo = new UmemVO[list.size()];
			list.toArray(uvo);
		}
		return uvo;
	}
	// 기업 일반 유저 검색시 반환하는 기능
	public UmemVO[] getSearchMember(String member, String begin, String end, String result, String value) {
		UmemVO[] uvo = null; 
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("stat", member);
		map.put("begin", begin);
		map.put("end", end);
		map.put("result", result);
		map.put("value", value);
		
		List<UmemVO> list = ss.selectList("umem.searchList",map);
		
		if(list != null && !list.isEmpty()) {
			uvo = new UmemVO[list.size()];
			list.toArray(uvo);
		}
		return uvo;
	}
	
	// 기업 일반 유저 삭제 기능
	public int delList(String value,String stat) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("value", value);
		map.put("result", stat);
		
		return ss.update("umem.delList", map);
	}
	
	// 기업 일반 유저 검색된 총 수를 반환
	public int searchFind(String member,String result,String value) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("stat", member);
		map.put("result", result);
		map.put("value", value);
		
		return ss.selectOne("umem.searchFindUser", map);
	}
	
	// 한 사용자의 정보를 반환하는 기능
	public UmemVO searchUser2(String id) {
		return ss.selectOne("umem.searchUser2", id);
	}
	
}
