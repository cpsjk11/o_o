package api.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import api.u_member.vo.TrVO;
import api.vo.Search2;
import api.vo.api_1;

@Component
public class ArDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	// 인기 많은 학원의 학원 아이디 그리고 과정 아이디 훈련횟차를 반환하는 기능
	public Search2[] getFamous(String sysdate) {
		System.out.println(sysdate);
		Map<String, String> map = new HashMap<String, String>();
		map.put("s_date", sysdate);
		map.put("sysdate", sysdate);
		
		Search2[] vo = null;
		
		List<Search2> a_list = ss.selectList("ar.famous",map);
		
		if(a_list != null && !a_list.isEmpty()) {
			vo = new Search2[a_list.size()];
			a_list.toArray(vo);
		}
		return vo;
	}
	
	// 히트수에 따른 학원 반환
	public TrVO[] getFamous2(String sysdate) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("s_date", sysdate);
		map.put("sysdate", sysdate);
		
		TrVO[] vo = null;
		
		List<TrVO> a_list = ss.selectList("tra.ar", map);
		
		if(a_list != null && !a_list.isEmpty()) {
			vo = new TrVO[a_list.size()];
			a_list.toArray(vo);
		}
		return vo;
	}
}
