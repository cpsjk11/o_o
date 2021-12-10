package api.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import api.vo.EnrolVO;

@Repository
public class EnrolDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 수강신청 기능
	public int addEnrolment(EnrolVO evo) {
		return ss.insert("en.add", evo);
	}
	
	// 현재 사용자가 수강신청갯수 반환
	public int totalNum(String uid) {
		return ss.selectOne("en.check", uid);
	}
	
	// 반복 수강신청 막기 기능
	public int check(String e_trid) {
		return ss.selectOne("en.checkId", e_trid);
	}
}
