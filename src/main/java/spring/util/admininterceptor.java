package spring.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import api.u_member.vo.UmemVO;

public class admininterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, 
			HttpServletResponse response, Object handler)
			throws Exception {
		

		HttpSession session = request.getSession(true);

		
		//로그인시 저장했던 객체(mvo)를얻어낸다.
		Object obj = session.getAttribute("userName");
		UmemVO ad = (UmemVO) obj;
		if(obj == null) {
			//로그인을 하지않은 경우를 잡아낸상태
			//로그인을 하지않았으니 login페이지로 이동!
			response.sendRedirect("/ex");
			return false;
		}
		if(ad == null || !ad.getStat().equals("5")) {
			response.sendRedirect("/");
			return false;
		}
		//로그인이 된상태 이 때 해야할 일이있으면 여기쯤에서
		//구현하면된다.
		return true;
	}
	
	
}
