package api.gmail.send;

import java.util.Properties;
import javax.mail.Message; 
import javax.mail.MessagingException; 
import javax.mail.PasswordAuthentication; 
import javax.mail.Session; 
import javax.mail.Transport; 
import javax.mail.internet.AddressException; 
import javax.mail.internet.InternetAddress; 
import javax.mail.internet.MimeMessage; 

public class GoogleMail { 
	
	public static void gmailSend(String userMail, String name, String content) { 
	final String user = "cpsjk5109@gmail.com"; // gmail 계정 
	final String password = "vwfwifurotahxzwj"; // gmail 앱 패스워드 
	// SMTP 서버 정보를 설정한다. 
	Properties prop = new Properties(); 
	prop.put("mail.smtp.host", "smtp.gmail.com"); // 어떤 메일로 보내는지 명시
	prop.put("mail.smtp.port", 465);  // 465 stmp포트번호이다.
	prop.put("mail.smtp.auth", "true"); 
	prop.put("mail.smtp.ssl.enable", "true"); 
	prop.put("mail.smtp.ssl.trust", "smtp.gmail.com"); 
	Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() { 
		protected PasswordAuthentication getPasswordAuthentication() { 
			return new PasswordAuthentication(user, password); 
			} 
		}); 
			
				try { 
				
				MimeMessage message = new MimeMessage(session); message.setFrom(new InternetAddress(user)); 
				//수신자메일주소 
				message.addRecipient(Message.RecipientType.TO, new InternetAddress(userMail)); 
				
				message.setContent(content,"text/html;charset=utf-8"); // text/html;charset=utf-8 지정해주면 html태그 형식도 보여준다
				// Subject 
				message.setSubject(name+"국삐 입니다"); //메일 제목을 입력 
				// Text 
				//message.setText(test); //메일 내용을 입력 
				// send the message 
				Transport.send(message); 
				////전송 
				System.out.println("메일 전송성공!!"); 
				} catch (AddressException e) { 
					e.printStackTrace(); 
				} catch (MessagingException e) { 
					e.printStackTrace(); 
				} 
			System.out.println(); 
		}
	

		
}
	

