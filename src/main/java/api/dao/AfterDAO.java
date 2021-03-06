package api.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import api.u_member.vo.AfterVO;
import api.u_member.vo.HelpVO;
import api.u_member.vo.UmemVO;

@Repository
public class AfterDAO {
	@Autowired
	private SqlSessionTemplate ss;
	
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
	
	// 후기 작성자 불러오기
	public boolean list_id(String u_id, String tr_id) {
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_id", u_id);
		map.put("tr_id", tr_id);
		
		boolean chk = true;
		
		String id = ss.selectOne("after.list_id", map);
		
		if(id != null && !id.trim().equals(""))
			chk = false;
		
		return chk;
	}
	
	// 훈련문의 등록
	public int add2(String tr_id, String u_id, String content) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("tr_id", tr_id);
		map.put("u_mem_id", u_id);
		map.put("content", content);
		map.put("stat", 0);
		
		return ss.insert("after.add2", map);
	}
	
	// 훈련문의 불러오기
	public HelpVO[] list2(String tr_id) {
		
		List<HelpVO> list = ss.selectList("after.list2", tr_id);
		HelpVO[] hvo = null;
		
		if(list != null && list.size() > 0) {
			hvo = new HelpVO[list.size()];
			list.toArray(hvo);
		}
		
		return hvo;
	}	
}
