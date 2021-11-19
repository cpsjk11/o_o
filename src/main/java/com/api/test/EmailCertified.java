package com.api.test;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import api.action.secure.SecureUtil;
import api.dao.InDAO;
import api.dao.UmemDAO;
import api.gmail.send.GoogleMail;

@Controller
public class EmailCertified {
	
	String random ;
	
	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private InDAO i_dao;
	
	@RequestMapping(value="/check",method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> checkMail(String value){
		Map<String, String> map = new HashMap<String, String>();
		
		if(value == null || random == null) {
			map.put("result", "0");
			return map;
		}
		
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
	@ResponseBody
	public Map<String, String> mail(String userMail){
		Map<String, String> map = new HashMap<String, String>();
		
		// 먼저 사용자가 입력한 이메일이 있는 이메일인지 아닌지를 구분한다.
		String id = u_dao.findID(userMail);
		
		if(id == null) {
			// 사용자가 입력한 아이디가 없을경우
			map.put("value", "2");
			return map;
		}
		// 먼저 해당 이메일로 인증코드 보내기!
		random = SecureUtil.generateSalt();
		GoogleMail.gmailSend(userMail, "","인증코드 입니다.\r\n"+random);
		map.put("value", "1");
		return map;
	}
	
	// 아이디 찾을때 이메일로 아이디 보내주기
	@RequestMapping("/findID")
	@ResponseBody
	public Map<String, String> findId(String mail){
		Map<String, String> map = new HashMap<String, String>();
		
		// 먼저 사용자가 입력한 이메일이 있는 이메일인지 아닌지를 구분한다.
		String id = u_dao.findID(mail);
		
		// 사용자의 아이디가 있을 경우 해당 메일로 아이디를 전송하자
		GoogleMail.gmailSend(mail, "아이디", "아이디입니다. 아이디 : "+id);
		map.put("value", "1");
		
		
		return map;
		
	}
	
	// 비밀번호 재발급 기능
	@RequestMapping("/findPW")
	@ResponseBody
	public Map<String, String> findPW(String id, String mail){
		Map<String, String> map = new HashMap<String, String>();
		
		// 사용자의 아이디와 비밀번호를 받은 후 먼저 이메일과 아이디와 일치한 유저가 있는지 없는지를 구분해서 없으면 반환하자
		String user = u_dao.findID(mail);
		
		if(user == null) {
			// 해당 유저가 우리 홈페이지 인원이 아닌경우이다.
			map.put("value", "2");
			return map;
		}
		
		// 여기는 우리 회원인 경우이다. 사용자의 아이디와 일치한 비밀번호를 임시 로 발급해 수정후 고객한테 반환해 주자.
		// 여기에 오기 전에 미리 이메일 인증까지 맞쳐둔 상태이다. 바로 임시 비밀번호를 지급하여 업데이트 해주자
		String imsiFat = SecureUtil.generateSalt();
		String newFat = SecureUtil.generateSalt();
		String newPw = SecureUtil.getEncrypt(imsiFat, newFat);
		
		int cnt = u_dao.findPW(id, newPw);
		int cnt2 = i_dao.updateFat(id, newFat);
		
		// 이제 임시비밀번호를 사용자에게 이메일로 전달하자
		GoogleMail.gmailSend(mail, "[임시비밀번호 발급]", "임시 비밀번호 입니다. \r\n 비밀번호를 변경해주십시오. \r\n [임시 비밀번호 :"+imsiFat+"]");
		map.put("value", "1");
		
		return map;
	}
	
	
}
