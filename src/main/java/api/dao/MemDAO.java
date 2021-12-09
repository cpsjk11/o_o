package api.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import api.u_member.vo.UmemVO;

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
}
