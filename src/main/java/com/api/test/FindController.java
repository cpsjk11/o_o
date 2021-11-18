package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FindController {
	
	@RequestMapping("/findId")
	public String findId() {
		return "findId";
	}
}
