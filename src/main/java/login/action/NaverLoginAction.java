package login.action;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.SecureRandom;
import java.util.HashMap;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Service;

@Service
public class NaverLoginAction implements Naver_Login {

	@Override
	  public String generateState() {
	    SecureRandom random = new SecureRandom();
	    return new BigInteger(130, random).toString(32);
	  }
	  @Override
	  public HashMap<String, String> makeNaverRequestStatement(String naverClientId) {
	    String redirectUri = "http://localhost:9090/naverRequestKey.inc";
	    String state = generateState();
	    String url = "https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=" + 
	      naverClientId + 
	      "&redirect_uri=" + redirectUri + "&state=" + state;
	    
	    HashMap<String, String> naverUrl = new HashMap<String, String>();
	    naverUrl.put("state", state);
	    naverUrl.put("url", url);
	    return naverUrl;
	  }
	  @Override
	  public HashMap<String, String> getNaverRequestKey(String state, String code, 
	        String naverClientId, String naverClientSecret) {
	    String naverUrl = "https://nid.naver.com/oauth2.0/token?client_id=" + 
	      naverClientId + "&client_secret=" + naverClientSecret + 
	      "&grant_type=authorization_code" + "&state=" + state + 
	      "&code=" + code;
	    String naverJsonKey = "";
	    HashMap<String, String> result = new HashMap<String, String>();
	    try {
	      HttpURLConnection conn = (HttpURLConnection)new URL(naverUrl)
	        .openConnection();
	      BufferedReader reader = new BufferedReader(new InputStreamReader(
	        conn.getInputStream(), "UTF-8"));
	      String input = null;
	      while ((input = reader.readLine()) != null) {
	        naverJsonKey = naverJsonKey + input;
	      }
	    } catch (MalformedURLException e) {
	      e.printStackTrace();
	    } catch (IOException e) {
	      e.printStackTrace();
	    }
	    try {
	      JSONParser parser = new JSONParser();
	      JSONObject jsonObject = (JSONObject)parser.parse(naverJsonKey);
	      result.put("access_token", (String)jsonObject.get("access_token"));
	      result.put("refresh_token", 
	        (String)jsonObject.get("refresh_token"));
	      result.put("token_type", (String)jsonObject.get("token_type"));
	    } catch (ParseException e) {
	      e.printStackTrace();
	    }
	    return result;
	  }
	  @Override // 유저들의 정보를 받고 싶은 것들을 정의하는 공간
	  public HashMap<String, String> naverRequestUserInfo(String token_type, String access_token){
	    String url = "https://openapi.naver.com/v1/nid/me";
	    String naverResult = "";
	    
	    HashMap<String, String> result = new HashMap<String, String>();
	    try {
	      HttpURLConnection conn = (HttpURLConnection)new URL(url).openConnection();
	      conn.setRequestMethod("GET");
	      conn.setRequestProperty("Authorization", token_type + " " + access_token);
	      BufferedReader reader = new BufferedReader(new InputStreamReader(
	        conn.getInputStream(), "UTF-8"));
	      String input = null;
	      while ((input = reader.readLine()) != null) {

	        naverResult = naverResult + input;
	      }
	      JSONParser parser = new JSONParser();
	      JSONObject jsonObject = (JSONObject)parser.parse(naverResult);
	      
	      JSONObject response = (JSONObject)jsonObject.get("response");
	      String phone = (String)response.get("mobile");
	      String email = (String)response.get("email");
	      String nickname = (String)response.get("nickname");
	      String id = (String)response.get("id");
	      String gen = (String)response.get("gender");
	      String gender = null;
	     /* if (gen.equalsIgnoreCase("M")) {
	        gender = "1";
	      } else {
	        gender = "2";
	      }*/
	      String age = (String)response.get("age");
	      String birthday = (String)response.get("birthday");
	      
	      result.put("email", email);
	      result.put("nickname", nickname);
	      result.put("age", age);
	      result.put("gender", gender);
	      result.put("id", id);
	      result.put("birthday", birthday);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return result;
	  }
}
