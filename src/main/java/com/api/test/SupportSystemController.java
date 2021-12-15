package com.api.test;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import spring.util.GoPolicy;

@Controller
public class SupportSystemController {
	
	@Autowired
	private GoPolicy go;
	
	// 교육생 지원제도 여기서 부터 ---->
		   @RequestMapping("/look")
		   public ModelAndView look(String menu) {
			 return go.goView("과정제도", menu);
			}
		   @RequestMapping("/look2")
		   public ModelAndView look2(String menu) {
	    	 return go.goView("취업성공패키지개요", menu);
		   }
		   @RequestMapping("/look3")
		   public ModelAndView look3(String menu) {
	    	return go.goView("프로그램구성", menu);
		   }
		   @RequestMapping("/look4")
		   public ModelAndView look4(String menu) {
	    	return go.goView("지원혜택", menu);
		   }
		   @RequestMapping("/look5")
		   public ModelAndView look5(String menu) {
		   return go.goView("취업성공패키지신청자격", menu);
		   }
		   @RequestMapping("/look6")
		   public ModelAndView look6(String menu) {
		   return go.goView("신청방법", menu);
		   }
		   @RequestMapping("/look7")
		   public ModelAndView look7(String menu) {
		   return go.goView("참여제한", menu);
		   }
		   @RequestMapping("/look8")
		   public ModelAndView look8(String menu) {
		   return go.goView("재참여", menu);
		   }
		   @RequestMapping("/card1")
		   public ModelAndView card1(String menu) {
	    	return go.goView("내일배움카드개요", menu);
		   }
		   @RequestMapping("/card2")
		   public ModelAndView card2(String menu) {
	    	return go.goView("내일배움카드지원", menu);
		   }
		   @RequestMapping("/card3")
		   public ModelAndView card3(String menu) {
	    	return go.goView("내일배움카드발급자격", menu);
		   }
		   @RequestMapping("/card4")
		   public ModelAndView card4(String menu) {
	    	return go.goView("내일배움카드신청방법", menu);
		   }
		   @RequestMapping("/card5")
		   public ModelAndView card5(String menu) {
	    	return go.goView("내일배움카드재발급", menu);
		   }
		   @RequestMapping("/country1")
		   public ModelAndView country1(String menu) {
	    	return go.goView("국가기간전략개요", menu);
		   }
		   @RequestMapping("/country2")
		   public ModelAndView country2(String menu) {
	        return go.goView("국가기간전략지원", menu);
		   }
		   @RequestMapping("/country3")
		   public ModelAndView country3(String menu) {
	    	return go.goView("국가기간전략지원자격", menu);
		   }
		   @RequestMapping("/country4")
		   public ModelAndView country4(String menu) {
	    	return go.goView("과정제도", menu);
		   }
		   @RequestMapping("/ss")
		   public ModelAndView incumbent(String menu) {
			   return go.goView("재직자개요", menu);
		   }
		   @RequestMapping("/incumbent2")
		   public ModelAndView incumbent2(String menu) {
			   return go.goView("재직자개발훈련", menu);
		   }
		   @RequestMapping("/incumbent3")
		   public ModelAndView incumbent3(String menu) {
			   return go.goView("재직자신청자격", menu);
		   }
		   @RequestMapping("/incumbent4")
		   public ModelAndView incumbent4(String menu) {
			   return go.goView("재직자능력개발훈련신청", menu);
		   }
		   @RequestMapping("/incumbent5")
		   public ModelAndView incumbent5(String menu) {
			   return go.goView("사업주직업능력개발훈련개요", menu);
		   }
		   @RequestMapping("/incumbent6")
		   public ModelAndView incumbent6(String menu) {
			   return go.goView("재직자사업주직업능력개발훈련대상", menu);
		   }
		   @RequestMapping("/incumbent7")
		   public ModelAndView incumbent7(String menu) {
			   return go.goView("사업주직업능력개발훈련종류", menu);
		   }
		   @RequestMapping("/incumbent8")
		   public ModelAndView incumbent8(String menu) {
			   return go.goView("사업자직업능력개발훈련지원혜택", menu);
		   }
		   @RequestMapping("/incumbent9")
		   public ModelAndView incumbent9(String menu) {
			   return go.goView("사업자직업능력개발훈련진행절차", menu);
		   }
		   @RequestMapping("/incumbent10")
		   public ModelAndView incumbent10(String menu) {
			   return go.goView("핵심직무능력향상훈련개요", menu);
		   }
		   @RequestMapping("/incumbent11")
		   public ModelAndView incumbent11(String menu) {
			   return go.goView("핵심직무능력향상지원대상", menu);
		   }
		   @RequestMapping("/incumbent12")
		   public ModelAndView incumbent12(String menu) {
			   return go.goView("핵심직무능력향상훈련지원혜택", menu);
		   }
		   @RequestMapping("/incumbent13")
		   public ModelAndView incumbent13(String menu) {
			   return go.goView("핵심직무능력향상훈련신청방법", menu);
		   }
		   @RequestMapping("/youth")
		   public ModelAndView youth(String menu) {
			   return go.goView("청년취업아카데미개요", menu);
		   }
		   @RequestMapping("/youth2")
		   public ModelAndView youth2(String menu) {
			   return go.goView("청년취업아카데미운영절차", menu);
		   }
		   @RequestMapping("/youth3")
		   public ModelAndView youth3(String menu) {
			   return go.goView("청년아카데미교육과정", menu);
		   }
		   @RequestMapping("/youth4")
		   public ModelAndView youth4(String menu) {
			   return go.goView("청년아카데미교육생선발기준", menu);
		   }
			
			// <--- 여기까지 입니당 나중에 컨트롤러 하나 만들까유???
	
}
