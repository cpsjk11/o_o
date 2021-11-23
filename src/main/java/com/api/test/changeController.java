package com.api.test;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class changeController {


	@RequestMapping("/mypage/change")
	public String change() {
		return "정보변경";
	}
	

	
	
	
}
