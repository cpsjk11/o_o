package api.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import api.u_member.vo.AfterVO;
import api.u_member.vo.UmemVO;

@Repository
public class AfterDAO {
	@Autowired
	private SqlSessionTemplate ss;
	
	int i=4;
	
	// 수강후기 등록
	public int add(String tr_id, String u_id, String content) {
		Map<String, Object> map = new HashMap<String, Object>();
		//map.put("af_idx", String.valueOf(i++));
		map.put("tr_id", tr_id);
		map.put("u_mem_id", u_id);
		map.put("content", content);
		map.put("stat", 0);
		
		return ss.insert("after.add", map);
	}
	
	// 후기 불러오기
	public AfterVO[] list(String tr_id) {
		
		List<AfterVO> list = ss.selectList("after.list", tr_id);
		AfterVO[] afvo = null;
		
		if(list != null && list.size() > 0) {
			afvo = new AfterVO[list.size()];
			list.toArray(afvo);
		}
		
		return afvo;
	}
	
}
