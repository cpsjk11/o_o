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
	public Search2[] getFamous() {
		Search2[] vo = null;
		
		List<Search2> a_list = ss.selectList("rd.rd");
		
		if(a_list != null && !a_list.isEmpty()) {
			vo = new Search2[a_list.size()];
			a_list.toArray(vo);
		}
		return vo;
	}
}
