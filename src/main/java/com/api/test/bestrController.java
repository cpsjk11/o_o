package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class bestrController {

	@RequestMapping("/mypage/bestr")
	public String bestr() {

		
		return "수강신청이력";
	}
}
