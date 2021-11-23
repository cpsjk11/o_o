package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class nowController {

	@RequestMapping("/mypage/now")
	public String main2() {
		return "현재수강중인훈련";
	}
}
