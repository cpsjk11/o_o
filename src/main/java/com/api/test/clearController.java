package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class clearController {

	
	@RequestMapping("/mypage/clear")
	public String clear() {
		return "훈련완료이력";
	}
}
