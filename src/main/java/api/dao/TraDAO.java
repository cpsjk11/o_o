package api.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class TraDAO {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	// 훈련 등록 기능
	public int add(String tr_id, String tr_name, String price, String person, String start, String manager) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		String price1 = price.replace(",", ""); 
		
		map.put("traning_id", tr_id);
		map.put("content", tr_name);
		map.put("price", price1);
		map.put("personnel", person);
		map.put("term", start);
		map.put("manager", manager);
		map.put("stat", 1);
		
		return ss.insert("tra.add", map);
	}
	
	//훈련 검색 기능
	public boolean search(String tr_id) {
		boolean chk = true;
		
		String tra = ss.selectOne("tra.search", tr_id);
		if(tra != null && !tra.trim().equals("")) {
			chk = false;
		}
		
		return chk;
	}
}
