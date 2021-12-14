package api.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import api.u_member.vo.LikeVO;

@Repository
public class TraDAO {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	// 훈련 등록 기능
	public int add(String tr_id, String tr_name, String tr_degr, String price, String person, String start, String manager, String imageCode, String addr) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		String price1 = price.replace(",", ""); 
		
		map.put("traning_id", tr_id);
		map.put("tr_degr", tr_degr);
		map.put("content", tr_name);
		map.put("price", price1);
		map.put("personnel", person);
		map.put("term", start);
		map.put("manager", manager);
		map.put("stat", 1);
		map.put("imageCode", imageCode);
		map.put("addr", addr);
		
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
	
	//히트수 증가 기능
	public int hitUp(String tr_id) {
		return ss.update("tra.hit", tr_id);
	}
	
	//관심훈련 등록 기능
	public int add2(String u_id, String tr_id, String tr_name, String tr_start, String tr_end, String like_date) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		String tr_term = tr_start+" ~ "+tr_end;
		
		map.put("u_mem_id", u_id);
		map.put("tr_id", tr_id);
		map.put("tr_name", tr_name);
		map.put("tr_term", tr_term);
		map.put("like_date", like_date);
		map.put("stat", 1);
		map.put("hit", 0);
		
		return ss.insert("tra.add2", map);
	}
	
	//관심훈련 검색 기능
	public LikeVO[] list2(String u_id) {
		
		List<LikeVO> l_list = ss.selectList("tra.list2", u_id);
		
		LikeVO[] ar = new LikeVO[l_list.size()];
		
		l_list.toArray(ar);
		
		return ar;
	}
	
	//관심훈련 좋아요 여부확인
	public boolean search2(String u_id, String tr_id) {
		boolean chk = false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_mem_id", u_id);
		map.put("tr_id", tr_id);
		
		String like = ss.selectOne("tra.search2", map);
		if(like != null && !like.trim().equals("")) {
			chk = true;
		}
		
		return chk;
	}
	
	//관심훈련 삭제
	public int del(String u_id, String tr_id) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("u_mem_id", u_id);
		map.put("tr_id", tr_id);
		
		return ss.delete("tra.del", map);
	}

}
