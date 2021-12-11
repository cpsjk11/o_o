package api.dao;

import java.util.List;

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
	
	// 기업회원의 수강신청 흔련생 현황 가져오기
	public EnrolVO[] getList(String e_company) {
		EnrolVO[] evo = null;
		
		List<EnrolVO> e_list = ss.selectList("en.getList", e_company);

		if(e_list != null && !e_list.isEmpty()) {
			evo = new EnrolVO[e_list.size()];
			e_list.toArray(evo);
		}
		
		return evo;
	}
	
	// 기업회원의 수강신청 흔련생 현황 가져오기
		public EnrolVO[] getuserList(String e_uid) {
			EnrolVO[] evo = null;
			
			List<EnrolVO> e_list = ss.selectList("en.getuserList", e_uid);

			if(e_list != null && !e_list.isEmpty()) {
				evo = new EnrolVO[e_list.size()];
				e_list.toArray(evo);
			}
			
			return evo;
		}
	
	
}
