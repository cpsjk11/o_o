package com.api.test;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CuserController {

	@Autowired
	private HttpSession hs;

	@Autowired
	private HttpServletRequest req;
	
	@RequestMapping("mypage/Cmy")
	public String CmyPage() {
		return "기업정보보기";
	}
	@RequestMapping("mypage/Cinfo")
	public String CinfoPage() {
		return "기업정보변경";
	}
	@RequestMapping("mypage/Capi")
	public String CapuPage() {
		return "기업수강신청인원";
	}
	@RequestMapping("mypage/Csuc")
	public String CsucPage() {
		return "기업제휴문의";
	}
}
