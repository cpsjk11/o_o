package com.api.test;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import api.action.PwCheck;
import api.action.secure.SecureUtil;
import api.dao.InDAO;
import api.dao.UmemDAO;
import api.gmail.send.GoogleMail;
import api.u_member.vo.UmemVO;

@Controller
public class memberShipController { // 회원가입 기능을 모여둔 컨트롤러 입니다.
	
	
	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private InDAO i_dao;
	
	// 비동기식 으로 사용자의 아이디 사용가능 여부 확인하는 기능
	@RequestMapping("checkId")
	@ResponseBody
	public Map<String, String> searchId(String id){
		Map<String, String> map = new HashMap<String, String>();
		
		// 사용자의 아이디를 받아서 사용 가능하다면 1 을 중복이라면 2의 값을 반환하자!!
		String chk = u_dao.searchUser(id);
		
		if(chk == null) {
			// 아이디가 사용가능할때!!
			map.put("overlap", "1");
		}else {
			// 아이디가 붕복일때 !!
			map.put("overlap", "2");
		}
		
		return map;
	}
	@RequestMapping("checkName")
	@ResponseBody
	public Map<String, String> searchName(String c_name){
		Map<String, String> map = new HashMap<String, String>();
		
		// 사용자의 아이디를 받아서 사용 가능하다면 1 을 중복이라면 2의 값을 반환하자!!
		String chk = u_dao.companyName(c_name);
		if(chk == null) {
			// 아이디가 사용가능할때!!
			map.put("overlap", "1");
		}else {
			// 아이디가 붕복일때 !!
			map.put("overlap", "2");
		}
		
		return map;
	}
	//사용자 사업자등록번호체크
	@RequestMapping("checkCnum")
	@ResponseBody
	public Map<String, String> searchCnum(String c_num){
		Map<String, String> map = new HashMap<String, String>();
		
		// 사용자의 아이디를 받아서 사용 가능하다면 1 을 중복이라면 2의 값을 반환하자!!
		String chk = u_dao.searchCnum(c_num);
		
		if(chk == null) {
			//사용가능
			map.put("overlap", "1");
		}else {
			//사용불가
			map.put("overlap", "2");
		}
		
		return map;
	}
	
	
	// 비동식 통신을 이용하여 사용자의 비밀번호가 길이 특수문자를 제대로 입력했는지 안 했는지 비교하는 기능!!
	@RequestMapping(value = "/checkPw", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Integer> check(String m_pw){
		Map<String, Integer> map = new HashMap<String, Integer>();
		
		// 사용자가 입력한 비밀번호가 우리가 정한 규약의 맞는지 확인하는 클래스 호출!!
		int ck = PwCheck.checkPw(m_pw);
		
		// 이제 숫자 1,2,3 으로 구분지어서 값이 넘어올 것이다 그 값을 보내주자!
		map.put("check", ck);
		
		return map;
	}
	
		// 회원가입 기능!!
		@RequestMapping("/userAdd")
		public String addUser(UmemVO uvo, Model md,String stat) {
			System.out.println(uvo.getC_num());
			String fat = SecureUtil.generateSalt();
			if(uvo.getMember() == null) {
				uvo.setMember("user");
			}
			//uvo.setC_num(uvo.getC_num().replace("-", ""));

			uvo.setStat(stat);
			
			// Inbody에 저장
			i_dao.addInbody(uvo.getId(), fat);
			
			uvo.setPw(SecureUtil.getEncrypt(uvo.getPw(), fat));
			
			// 사용자 정보 DB에 저장!!
			int cnt = u_dao.jogin(uvo);
			
			if(cnt > 0) {
				// 회원가입 성공시
				md.addAttribute("value", "회원가입 완료");
				// 가입축하 이메일 보내기
				GoogleMail.gmailSend(uvo.getEmail(), uvo.getName(), "국삐 회원가입을 환영합니다");
				return "redirect:/";
			}
			// 회원가입 실패시
			md.addAttribute("value", "다시 시도해 주세요");
			return "login";
		}
}
