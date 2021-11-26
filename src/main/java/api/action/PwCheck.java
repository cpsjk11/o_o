package api.action;

public class PwCheck {
	
	// 여기는 비밀번호가 8자 이상 부터 18자 까지 길이를 확인하고 
	// 비밀번호는 꼭 "!","@","#","$","%" 특수기호가 들어가야 한다!!
	
	/* check 값이 1 : 길이가 부족한 경우	
		         2 : 올바른 경우
				 3 : 특수기호가 들어가 있지 않은 경우
	*/
	public static int checkPw(String pw) {
		String[] characters =  {"!","@","#","$","%"};
		int check = 0;
		
		// 비밀번호 길이 확인
		if(pw.trim().length() > 7 && pw.trim().length() < 50) {
			// 여기에 들어온 경우는 숫자를 너무 길게 혹은 짧게 입력한 경우이다.
			// 그러므로 아무것도 하지말고 반환값에 1을 넣어 반환하자
			
		
			// 특수기호 들어가 있는지 확인하는 문장
			for(int i = 0; i < characters.length; i++) {
				if(pw.indexOf(characters[i]) != -1) {
					// 지정한 특수문자를 입력한 경우이다.
					check = 2;
					break;
				}else {
					check = 3;
				}
			}
		}else
			check = 1;
		return check;
	}
	
	

}
