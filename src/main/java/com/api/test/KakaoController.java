package com.api.test;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonParser;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import api.action.secure.SecureUtil;
import api.dao.InDAO;
import api.dao.UmemDAO;
import api.gmail.send.GoogleMail;
import api.u_member.vo.UmemVO;

@Controller
public class KakaoController {
	
	
	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private InDAO i_dao;
	
	@Autowired
	private HttpSession session;
	
	@RequestMapping("/test/login")
	public ModelAndView kakaoLogin(String code) {
		ModelAndView mv = new ModelAndView();
		UmemVO uvo = null;
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream())); 
			
			StringBuffer sb = new StringBuffer("grant_type=authorization_code");
			sb.append("&client_id=0c76b8606442452175ac2545632942ae");
			sb.append("&redirect_uri=http://localhost:9090/test/login");
			sb.append("&code="+code);
			
			bw.write(sb.toString());
			bw.flush();
			
			int res_code = conn.getResponseCode();
			
			if(res_code == HttpURLConnection.HTTP_OK) {
				BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
				StringBuffer result = new StringBuffer();
				String str = null;
				
				while((str = br.readLine()) != null) 
					result.append(str);
				
				// JSON?????? ?????? "acces_token"??? "refresh_token"??? ????????????
				// ?????????API????????? ??? ??? 
				// ModelAndView??? ???????????? result.jsp??? ???????????? ????????? ????????????.
				JSONParser parser = new JSONParser();
				
				// JSON???????????? ?????? ????????? ???????????? ?????? ?????? ?????? JSON????????? ??????????????? ???????????????
				// result.toString() ----> JSON????????? ????????????
				Object obj = parser.parse(result.toString());
				JSONObject job = (JSONObject) obj;
				
				access_Token = (String) job.get("access_token");
				refresh_Token = (String) job.get("refresh_token");
				
				String header = "Bearer "+access_Token;
				String apiURLs = "https://kapi.kakao.com/v2/user/me";
				
				URL url2 = new URL(apiURLs);
				HttpURLConnection conn2 = (HttpURLConnection) url2.openConnection();
				
				conn2.setRequestMethod("POST");
				conn2.setDoOutput(true);
				
				conn2.setRequestProperty("Authorization", header);
				
				res_code = conn2.getResponseCode();
				if(res_code == HttpURLConnection.HTTP_OK) {
					BufferedReader br2 = new BufferedReader(new InputStreamReader(conn2.getInputStream()));
					
					String user = null;
					StringBuffer userResult = new StringBuffer();
					
					while((user = br2.readLine()) != null)
						userResult.append(user);
					
					obj = parser.parse(userResult.toString());
					job = (JSONObject) obj;
					
					Object obj2 = job.get("id");
					String id = obj2.toString();
					
					JSONObject props = (JSONObject)job.get("properties");
					String nickName = (String) props.get("nickname");
					
					JSONObject kakao_acc = (JSONObject) job.get("kakao_account");
					JSONObject profile = (JSONObject) kakao_acc.get("profile");
					String nickNames = (String) profile.get("nickname");
					String eamil = (String) kakao_acc.get("email");
					String b_year = (String) kakao_acc.get("birthyear");
					String b_day = (String) kakao_acc.get("birthday");
					String phone = (String) kakao_acc.get("phone_number");
					
					uvo = new UmemVO(id,id,nickNames, b_year+b_day, eamil, phone, null,"0","kakao");
				}
				
				
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		String check = u_dao.searchUser(uvo.getId());
		if(check == null) {
			
			String res = SecureUtil.generateSalt(); 
			String st = SecureUtil.getEncrypt(uvo.getId(), res);
			uvo.setPw(st);
			
			int cnt = u_dao.jogin(uvo);
			i_dao.addInbody(uvo.getId(), res);
			if(cnt > 0) {
				if(uvo.getEmail() != null)
					GoogleMail.gmailSend(uvo.getEmail(),uvo.getName(),"?????????????????? ????????????~!~!");
			}
			mv.setViewName("redirect:/");
		}else {
			// ???????????? ???????????? ??? ????????????
			String fat = i_dao.searchFat(uvo.getId());
			
			// ????????? ?????? ???????????? ????????????
			String ress = SecureUtil.getEncrypt(uvo.getId(), fat);
			
			// ????????? ??????!!
			UmemVO uvos = u_dao.login(uvo.getId(), ress);
			if(uvos != null) {
				// ????????? ???????????????.
				if(uvos.getStat().startsWith("-")) {
					mv.setViewName("redirect:/");
					return mv;
					
				}
				session.setAttribute("userName", uvos);	
				session.setAttribute("u_id", uvos.getId());
				session.setAttribute("stat", uvos.getStat());
				session.setAttribute("rank", "2");
				mv.setViewName("redirect:/");
			}else
				mv.setViewName("redirect:/ex");
		}
			
			
		return mv;
	}
	
	// ?????????????????? ?????? ???????????? ??????
	@RequestMapping("/test/logout")
	public String kakao_logout() throws Exception {
		/*
		 * String logoutUrl = "https://kauth.kakao.com/oauth/logout";
		 * 
		 * URL url = new URL(logoutUrl); HttpURLConnection conn = (HttpURLConnection)
		 * url.openConnection();
		 * 
		 * conn.setRequestMethod("GET"); conn.setDoOutput(true);
		 * 
		 * BufferedWriter bw = new BufferedWriter(new
		 * OutputStreamWriter(conn.getOutputStream()));
		 * 
		 * 
		 * StringBuffer sb = new StringBuffer();
		 * sb.append("?client_id=0c76b8606442452175ac2545632942ae");
		 * sb.append("&logout_redirect_uri=http://localhost:9090/test/logout");
		 * 
		 * bw.write(sb.toString()); bw.flush();
		 */
		
		session.removeAttribute("userName");
		
		return "redirect:/";
	}
	
}















