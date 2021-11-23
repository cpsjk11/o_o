package com.api.test;


import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class cardController {

	@RequestMapping("/mypage/issue")
	public String issue() {
		return "발급신청";
	}
	
	@RequestMapping("/mypage/card")
	public String card() {
		return "카드신청내역";
	}
	
	@RequestMapping("/mypage/refund")
	public String refund() {
		return "자비부담금 환급신청";
	}
	
	@RequestMapping("/mypage/inquire")
	public String inquire() {
		return "자비부담금 환급조회";
	}
}
