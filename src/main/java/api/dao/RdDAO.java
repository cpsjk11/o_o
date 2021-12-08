package api.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import api.vo.Search2;

@Repository
public class RdDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 추천학원들 가져오는 기능
	public Search2[] getFamous(String yesterday) {
		Search2[] vo = null;
		
		List<Search2> a_list = ss.selectList("rd.rd",yesterday);
		
		if(a_list != null && !a_list.isEmpty()) {
			vo = new Search2[a_list.size()];
			a_list.toArray(vo);
		}
		return vo;
	}
	
	// 관리자 페이지에서 추천학원 쉽게 넣는 기능
	public int addAppend(Search2 s2) {
		return ss.insert("rd.appendRd", s2);
	}
	
	// 관리자 페이지에서 회사 정보 변경 기능
	public int updateCompany(Search2 s2) {
		return ss.update("rd.updateCompany", s2);
	}
	
	// 관리자 페이지에서 추천학원 목록에서 회사를 삭제하는 기능
	public int delCompany(String id) {
		return ss.update("rd.delCompany", id);
	}
}
