package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MyPageController {

	@RequestMapping("/myPage/mypage")
	public String main() {
		return "/myPage/현재수강중인훈련";
	}
	
	@RequestMapping("myPage/bestr")
	public String bestr() {
		return "/myPage/수강신청이력";
	}
	
	@RequestMapping("myPage/now")
	public String now() {
		return "/myPage/현재수강중인훈련";
	}
	
	@RequestMapping("myPage/clear")
	public String clear() {
		return "/myPage/훈련완료이력";
	}
	
	@RequestMapping("myPage/change")
	public String change() {
		return "/myPage/정보변경";
	}
	
	@RequestMapping("myPage/pwd")
	public String pwd() {
		return "/myPage/비밀번호변경";
	}
	
	@RequestMapping("myPage/remove")
	public String remove() {
		return "/myPage/회원탈퇴";
	}
	
	@RequestMapping("myPage/inter")
	public String inter() {
		return "/myPage/관심훈련정보";
	}
	
	@RequestMapping("myPage/search")
	public String search() {
		return "/myPage/최근조회한훈련";
	}
	
	@RequestMapping("myPage/issue")
	public String issue() {
		return "/myPage/발급신청";
	}
	
	@RequestMapping("myPage/card")
	public String card() {
		return "/myPage/카드신청내역";
	}
	
	@RequestMapping("myPage/refund")
	public String refund() {
		return "/myPage/자비부담금_환급신청";
	}
	
	@RequestMapping("myPage/inquire")
	public String inquire() {
		return "/myPage/자비부담금_환급조회";
	}
}
