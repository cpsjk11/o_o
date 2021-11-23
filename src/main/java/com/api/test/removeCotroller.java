package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class removeCotroller {

	@RequestMapping("/mypage/remove")
	public String remove() {
		return "회원탈퇴";
	}
}
