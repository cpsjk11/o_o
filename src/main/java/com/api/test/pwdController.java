package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class pwdController {

	@RequestMapping("/mypage/pwd")
	public String pwd() {
		return "비밀번호변경";
	}
}
