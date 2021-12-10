package api.action;

import javax.servlet.http.HttpServletResponse;

import api.u_member.vo.UmemVO;
import api.vo.EnrolVO;
import api.vo.Search2;

public interface ExcelDown {
	
	// 모든 일반회원,기업회원의 정보를 반환하는 기능
	void getList(String sheets,UmemVO[] uvo,String filename,HttpServletResponse response);
	
	// 추천학원 인기 학원의 정보를 반환하는 기능
	void getRecommended(String sheets,Search2[] svo,String filename,HttpServletResponse response);
	
	// 기업회원 수강신청 인원 반환하는 기능
	void getEnrolment(String sheets,EnrolVO[] evo,String filename,HttpServletResponse response);

	
}
