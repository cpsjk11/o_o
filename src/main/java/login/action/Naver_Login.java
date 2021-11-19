package login.action;

import java.util.HashMap;

public interface Naver_Login {
	String generateState();
	HashMap<String, String> makeNaverRequestStatement(String paramString);
	
	HashMap<String, String> getNaverRequestKey(String paramString1,String paramString2,String paramString3,String paramString4);
	
	HashMap<String, String> naverRequestUserInfo(String paramString1, String paramString2);
}
