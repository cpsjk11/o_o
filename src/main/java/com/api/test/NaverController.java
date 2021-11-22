package com.api.test;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import api.action.secure.SecureUtil;
import api.dao.InDAO;
import api.dao.UmemDAO;
import api.u_member.vo.UmemVO;
import login.action.Naver_Login;

@Controller
public class NaverController {
	
	private String state;
	private String code;
	private String access_token;
	private String refresh_token;
	private String token_type;
	private final String naverClientId = "O90hjbCEB9bYyHxi83Zz";
	private final String naverClientSecret = "JbxqRCid_x";
	private String returnUrl;
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private Naver_Login naver;
	
	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private InDAO i_dao;
	
	@Autowired
	private HttpSession session;
	
	
	@RequestMapping("naverLogin.inc")
	public String makeNaverRequestStatement() {
		HashMap<String, String> naverUrl = naver.makeNaverRequestStatement(naverClientId);
		
		state = (String) naverUrl.get("state");
		returnUrl = request.getHeader("referer");
		
		return "redirect:"+(String) naverUrl.get("url");
	}
	
	@RequestMapping("/naverRequestKey.inc")
	public String getNaverRequestKey(String state, String code) {
		if(state.equals(this.state))
			session.setAttribute("isLoged", Boolean.valueOf(true));
		else {
			session.setAttribute("isLoged", Boolean.valueOf(false));
			return "redirect:/";
		}
		this.code = code;
		
		HashMap<String, String> result = naver.getNaverRequestKey(state, code, naverClientId, naverClientSecret);
		
		access_token = (String) result.get("access_token");
		refresh_token = (String) result.get("refresh_token");
		token_type = (String) result.get("token_type");
		
		return "redirect:/naverRequestUserInfo.inc";
	}
	
	@RequestMapping("/naverRequestUserInfo.inc")
	public String naverRequestUserInfo() {
		HashMap<String, String> result = naver.naverRequestUserInfo(token_type, access_token);
		String id = (String)result.get("id");
		String email = (String)result.get("email");
		String name  = (String)result.get("nickname");
		String phone = (String)result.get("phone");
		String b_day = (String)result.get("birthday");
		
		String user = u_dao.searchUser(id);
		
		UmemVO uvo = new UmemVO(id, id, name, b_day, email, phone, null, "0","naver");
		
		if(user == null) {
			// 사용자 비밀번호 암호화
			String fat = SecureUtil.generateSalt();
			String fatSet = SecureUtil.getEncrypt(id, fat);
			
			uvo.setPw(fatSet);
			
			// 이제 멤버 저장!
			u_dao.jogin(uvo);
			i_dao.addInbody(id, fat);
			
			session.setAttribute("userName", uvo);
		}
		else {
			String res = i_dao.searchFat(id);
			String str = SecureUtil.getEncrypt(id, res);
			uvo = u_dao.login(id, str);
			session.setAttribute("userName", uvo);
		}
		session.setAttribute("rank", "3");
		
		
		return "redirect:/";
	}
	
	@RequestMapping("/naverlogout")
	public String naverLogin() throws Exception {
		String outUrl = "https://nid.naver.com/oauth2.0/token?";
		
		URL url = new URL(outUrl);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("POST");
		conn.setDoOutput(true);
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		StringBuffer sb = new StringBuffer();
		sb.append("grant_type=delete");
		sb.append("&client_id="+naverClientId);
		sb.append("&client_secret="+naverClientSecret);
		sb.append("&access_token="+access_token);
		sb.append("&service_provider=NAVER");
		
		bw.write(sb.toString());
		bw.flush();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		StringBuffer result = new StringBuffer();
		String str = null;
		
		while((str = br.readLine()) != null) 
			result.append(str);

		JSONParser pa = new JSONParser();
		Object obj = pa.parse(result.toString());
		JSONObject sob = (JSONObject) obj;

		String success = (String) sob.get("result");
		
		String state = "success";
		
		if(state.equals(success)) {
			session.removeAttribute("userName");
			return "redirect:/";
		}else {
			// 네이버 토큰을 삭제하지 못 했을 경우이다.
			// 로그아웃을 못 할때 404? 보낼까유?
		}
		
		return sb.toString();
	}
	
}
