package api.action.secure;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;

public class SecureUtil {

	/*
	 * public static String getEncrypt(String pwd, String salt) { return
	 * getEncrypt(pwd, salt.getBytes()); }
	 */

		public static String getEncrypt(String pwd, String str) {
			// 반환값
			String result = "";
			
			byte[] salt = str.getBytes();
			
			// 사용자가 전달한 값도 byte[]로 변환
			byte[] a = pwd.getBytes();
			
			// 사용자가 전달한 값을 byte[]로 변환한 길이와
			// salt의 길이를 합쳐서 하나의 배열로 준비
			byte[] bytes = new byte[a.length+salt.length];
			
			// 사용자가 보내온 값과 salt의 값을 통합된 
			// 배열에 저장한다.
			System.arraycopy(a, 0, bytes, 0, a.length);
			System.arraycopy(salt, 0, bytes, a.length, salt.length);
			
			try {
				MessageDigest md = MessageDigest.getInstance("SHA-256");
				md.update(bytes);
				
				byte[] byteData = md.digest(); // 가공??
				
				StringBuffer sb = new StringBuffer();
				for(int i = 0; i<byteData.length; i++) 
					sb.append(Integer.toString((byteData[i] & 0xFF) + 256, 16).substring(1));
					
				result = sb.toString();
				
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
			
			
			return result;
		}
		
		public static String generateSalt() {
			Random random = new Random();
			
			byte[] salt = new byte[8]; // 보편적인 값이다.
			random.nextBytes(salt); // 난수들이 알아서 들어가는 부분이다.
			
			StringBuffer sb = new StringBuffer();
			for(Byte n : salt) {
				// byte 값을 Hex값으로 변환
				String str = String.format("%02x", n);
				sb.append(str);
			}
			return sb.toString();
		}
}
