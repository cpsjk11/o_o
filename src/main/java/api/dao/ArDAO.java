package api.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import api.vo.Search2;
import api.vo.api_1;

@Component
public class ArDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 인기 많은 학원의 학원 아이디 그리고 과정 아이디 훈련횟차를 반환하는 기능
	public Search2[] getFamous() {
		Search2[] vo = null;
		
		List<Search2> a_list = ss.selectList("ar.famous");
		
		if(a_list != null && !a_list.isEmpty()) {
			vo = new Search2[a_list.size()];
			a_list.toArray(vo);
		}
		return vo;
	}
}
