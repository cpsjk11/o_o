package com.api.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {


	@RequestMapping("/helpSc")
	public String goHelp() {
		return "helpSc";
	}
	@RequestMapping("/helpScV")
	public String goView(String b_idx) {
		System.out.println(b_idx);
		return "helpScV";
	}
	@RequestMapping("/helpWrite")
	public String goWrite(String bname) {
		System.out.println(bname);
		return "/helpWrite";
	}
	
}
