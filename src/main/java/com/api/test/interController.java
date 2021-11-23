package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class interController {
	
	@RequestMapping("/mypage/inter")
	public String inter() {
		return "관심훈련정보";
	}

}
