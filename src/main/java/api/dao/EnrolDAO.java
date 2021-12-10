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
}
