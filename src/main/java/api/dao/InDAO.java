package api.dao;

import java.util.HashMap;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import api.u_member.vo.UmemVO;

@Repository
public class InDAO {

	@Autowired
	private SqlSessionTemplate ss;
	
	public int addInbody(String name, String res) {
		Map<String, String>map = new HashMap<String, String>();
		map.put("protine", name);
		map.put("fat", res);
		map.put("kg", null);
		map.put("cm", null);
		
		return ss.insert("in.add", map);
	}
	
	// 사용자 fat값 가져오기
	public String searchFat(String fat) {
		return ss.selectOne("in.searchFat", fat);
	}
	
	// 사용자의 fat protine 수정 기능
	public int updateFat(String protine, String fat) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("protine", protine);
		map.put("fat", fat);
		return ss.update("in.fatUpdate", map);
	}
}
