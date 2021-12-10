package api.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import api.u_member.vo.LikeVO;
import api.u_member.vo.UmemVO;
import api.vo.BbsVO;

@Repository
public class MemDAO {
	
	@Autowired
	private SqlSessionTemplate ss;
	
	public List<UmemVO> getList(UmemVO vo) {
		
		return ss.selectList("mypage.List", vo);
	}
	
	public int edit(UmemVO vo) {
		return ss.update("mypage.edit",vo);
	}

	
	//성주회원탈퇴기능
	public int del(String id) {
		int cnt = ss.update("mypage.del", id);
		
		return cnt;
	}
	
	//총 게시물 수 - 총페이지 값을 구할 수 있다.
		public int getTotalCount() {
			int cnt = ss.selectOne("mypage.totalCount");
			return cnt;
		}

	public 	BbsVO[] getList(int begin, int end) {
			BbsVO[] ar = null;
			
			Map<String, String> map = new HashMap<String, String>();
			map.put("begin", String.valueOf(begin));
			map.put("end", String.valueOf(end));
			
			List<BbsVO> list = ss.selectList("bbs.bbsList", map);
			if(list != null && list.size() > 0 && !list.isEmpty()) {
				ar = new BbsVO[list.size()];
				list.toArray(ar);
			}
			
			return ar;
		}
	
	public BbsVO getBbs(String b_idx) {
		BbsVO vo = ss.selectOne("bbs.getBbs", b_idx);
		return vo;
	}
	
	public int delBbs(String b_idx) {
		int cnt = ss.update("bbs.delBbs", b_idx);
		
		return cnt;
	}
	
	public int editBbs(BbsVO vo) {
		
		return ss.update("bbs.edit", vo);
		
	}
}
