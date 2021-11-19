package com.api.test;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import api.action.secure.SecureUtil;
import api.dao.UmemDAO;
import api.gmail.send.GoogleMail;

@Controller
public class EmailCertified {
	
	String random ;
	
	@Autowired
	private UmemDAO u_dao;
	
	@RequestMapping(value="/check",method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> checkMail(String value){
		Map<String, String> map = new HashMap<String, String>();
		// 사용자가 입력한 인증코드를 비교하여 인증여부 조회하기 
		if(value.equals(random)) {
			// 인증코드 값이 일치하다면 1을 반환한다.
			map.put("result", "1");
		}
		else
			map.put("result", "2");
		return map;
	}
	@RequestMapping("/email")
	public Map<String, String> mail(String userMail){
		Map<String, String> map = new HashMap<String, String>();
		// 먼저 해당 이메일로 인증코드 보내기!
		random = SecureUtil.generateSalt();
		GoogleMail.gmailSend(userMail, "","인증코드 입니다.\r\n"+random);
		
		return map;
	}
	
	// 아이디 찾을때 이메일로 아이디 보내주기
	@RequestMapping("/findID")
	@ResponseBody
	public Map<String, String> findId(String mail){
		Map<String, String> map = new HashMap<String, String>();
		  
		// 먼저 사용자가 입력한 이메일이 있는 이메일인지 아닌지를 구분한다.
		String id = u_dao.findID(mail);
		
		if(id == null) {
			// 사용자가 입력한 아이디가 없을경우
			map.put("value", "2");
			return map;
		}else {
			// 사용자의 아이디가 있을 경우 해당 메일로 아이디를 전송하자
			GoogleMail.gmailSend(mail, "아이디", "아이디입니다. 아이디 : "+id);
			map.put("value", "1");
		}
		
		
		return map;
		
	}
	
	
}
