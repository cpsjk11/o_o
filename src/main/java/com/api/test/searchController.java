package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class searchController {

	@RequestMapping("/mypage/search")
	public String search() {
		return "최근조회한훈련";
	}
}
