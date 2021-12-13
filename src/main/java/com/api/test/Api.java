package com.api.test;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import api.action.RecommendedSchool;
import api.dao.AfterDAO;
import api.dao.ArDAO;
import api.dao.EnrolDAO;
import api.dao.RdDAO;
import api.dao.RegiDAO;
import api.dao.TraDAO;
import api.dao.UmemDAO;
import api.u_member.vo.AfterVO;
import api.u_member.vo.HelpVO;
import api.u_member.vo.LikeVO;
import api.u_member.vo.UmemVO;
import api.vo.EnrolVO;
import api.vo.Search2;
import api.vo.SearchVO;
import api.vo.api_1;
import api.vo.api_2_1;
import api.vo.api_2_2;
import api.vo.api_3;


@Controller
public class Api { // 
	/*
	 	목록 검색시 필요한 파라미터 들
	 	Ncs직무 : srchKeco1,srchKeco2,srchKeco3
		srchKeco1 : 대분류 
		srchKeco2 : 중분류 
		srchKeco3 : 세분류
		
		훈련지역 : srchTraArea1, srchTraArea2
			 대분류          중분류
		
		훈련기관 : srchTraOrganNm
			 Ex : srchTraOrganNm=increpas
		
		훈련과정 : srchTraProcessNm
			 Ex : srchTraProcessNm=increpas
		
		정렬기준 : sortCol
			 Ex : sortCol=TR_STT_DT     // 훈련시작일
			 Ex : sortCol=EI_EMPL_RATE // 취업률
			 Ex : sortCol=TOT_FXNUM   // 모집인원
			 Ex : sortCol=TR_NM_i        // 훈련과정명
		
		훈련유형 : crseTracseSe
		C0055 : 내일배움카드(구직자)
		C0054 : 국가기간전략산업직종
		C0068 : 컨소시엄 채용예정자
		C0053 : 지역구직자
		C0059 : 청년취업아카데미
		Y0054 : 4차산업혁명인력양성
		Z       : 중장년특화과정
		C0077 : 지역맞춤형일자리창출지원
		C0074 : 장애인직업능력개발훈련
		C0075 : 건설일용근로자기능향상
		C0071 : 베이비부머과정(폴리텍대학)
		C0069 : 기능사과정(폴리텍대학)
		C0070 : 기능장과정(폴리텍대학)
		C0072 : 여성재취업과정(폴리텍대학)
	 
	 
	 */
	@Autowired
	private HttpServletRequest req;
	
	@Autowired
	private HttpSession session;

	@Autowired
	private ArDAO a_dao;
	
	@Autowired
	private RdDAO r_dao;
	
	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private RegiDAO regi_dao;
	
	@Autowired
	private AfterDAO af_dao;
	
	@Autowired
	private TraDAO t_dao;
	
	@Autowired
	private EnrolDAO e_dao;
	
	private String nowDate;
	
	@RequestMapping("/ex")
	public String view() {
		return"login";
	}
	
//	@RequestMapping({"/*","/mypage/*","/404"})
//	public String goMain() {
//		return "redirect:/";
//	}
//	
	// 메인 페이지 나오자 마자 인기 학원 띄워주는 기능
	@RequestMapping({"/","/*"})
	public ModelAndView test(String sb) throws Exception {
		ModelAndView mv = new ModelAndView();

		// 날짜 구하기
		Date date = new Date();
        // 포맷변경 ( 년월일 시분초)
        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd"); 
        // Java 시간 더하기
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -1);
        String yesterday = sdformat.format(cal.getTime());
        cal.add(Calendar.DATE, +1);
        nowDate = sdformat.format(cal.getTime()).replace("-", "");
        
		String ip = req.getRemoteAddr();
		Search2[] se = a_dao.getFamous(yesterday);
		Search2[] rd = r_dao.getFamous(yesterday);
		
		
		if(se != null) {
			for(int i=0;  i< se.length; i++) {
				String srchTrprId = se[i].getSrchTrprId();
				String srchTrprDegr = se[i].getSrchTrprDegr();
				String srchTraProcessNm = se[i].getSrchTraProcessNm();
				String addr = se[i].getAddr();
				String subject = se[i].getSubject();
				String title = se[i].getTitle();
				
				
				Search2 svo = new Search2(srchTrprId, srchTrprDegr, subject, srchTraProcessNm, addr, title);
				
				se[i++] = svo;
				
			}// for end
			mv.addObject("avo", se);
			mv.addObject("length", se.length);
		}
		rd = RecommendedSchool.getSchool(rd);
		
		mv.addObject("avos", rd);
		mv.addObject("lengths", (rd == null) ? 1 : rd.length);
		if(sb != null)
			mv.addObject("sb", sb);
		mv.setViewName("home");
		
		return mv;
				
}
	
	
	// 교육생 지원제도 여기서 부터 ---->
	@RequestMapping("/look")
	   public String look() {
	      return "과정제도";
	   }
	   @RequestMapping("/look2")
	   public String look2() {
	      return "취업성공패키지개요";
	   }
	   @RequestMapping("/look3")
	   public String look3() {
	      return "프로그램구성";
	   }
	   @RequestMapping("/look4")
	   public String look4() {
	      return "지원혜택";
	   }
	   @RequestMapping("/look5")
	   public String look5() {
	      return "취업성공패키지신청자격";
	   }
	   @RequestMapping("/look6")
	   public String look6() {
	      return "신청방법";
	   }
	   @RequestMapping("/look7")
	   public String look7() {
	      return "참여제한";
	   }
	   @RequestMapping("/look8")
	   public String look8() {
	      return "재참여";
	   }
	   @RequestMapping("/card1")
	   public String card1() {
	      return "내일배움카드개요";
	   }
	   @RequestMapping("/card2")
	   public String card2() {
	      return "내일배움카드지원";
	   }
	   @RequestMapping("/card3")
	   public String card3() {
	      return "내일배움카드발급자격";
	   }
	   @RequestMapping("/card4")
	   public String card4() {
	      return "내일배움카드신청방법";
	   }
	   @RequestMapping("/card5")
	   public String card5() {
	      return "내일배움카드재발급";
	   }
	   @RequestMapping("/country1")
	   public String country1() {
	      return "국가기간전략개요";
	   }
	   @RequestMapping("/country2")
	   public String country2() {
	      return "국가기간전략지원";
	   }
	   @RequestMapping("/country3")
	   public String country3() {
	      return "국가기간전략지원자격";
	   }
	   @RequestMapping("/country4")
	   public String country4() {
	      return "과정제도";
	   }
	   
	   @RequestMapping("/ss")
	   public ModelAndView incumbent() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("재직자개요");
		   return mv;
	   }
	   @RequestMapping("/incumbent2")
	   public ModelAndView incumbent2() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("재직자개발훈련");
		   return mv;
	   }
	   @RequestMapping("/incumbent3")
	   public ModelAndView incumbent3() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("재직자신청자격");
		   return mv;
	   }
	   @RequestMapping("/incumbent4")
	   public ModelAndView incumbent4() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("재직자능력개발훈련신청");
		   return mv;
	   }
	   @RequestMapping("/incumbent5")
	   public ModelAndView incumbent5() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("사업주직업능력개발훈련개요");
		   return mv;
	   }
	   @RequestMapping("/incumbent6")
	   public ModelAndView incumbent6() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("재직자사업주직업능력개발훈련대상");
		   return mv;
	   }
	   @RequestMapping("/incumbent7")
	   public ModelAndView incumbent7() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("사업주직업능력개발훈련종류");
		   return mv;
	   }
	   @RequestMapping("/incumbent8")
	   public ModelAndView incumbent8() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("사업자직업능력개발훈련지원혜택");
		   return mv;
	   }
	   @RequestMapping("/incumbent9")
	   public ModelAndView incumbent9() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("사업자직업능력개발훈련진행절차");
		   return mv;
	   }
	   @RequestMapping("/incumbent10")
	   public ModelAndView incumbent10() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("핵심직무능력향상훈련개요");
		   return mv;
	   }
	   @RequestMapping("/incumbent11")
	   public ModelAndView incumbent11() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("핵심직무능력향상지원대상");
		   return mv;
	   }
	   @RequestMapping("/incumbent12")
	   public ModelAndView incumbent12() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("핵심직무능력향상훈련지원혜택");
		   return mv;
	   }
	   @RequestMapping("/incumbent13")
	   public ModelAndView incumbent13() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 1);
		   mv.setViewName("핵심직무능력향상훈련신청방법");
		   return mv;
	   }
	   @RequestMapping("/youth")
	   public ModelAndView youth() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 3);
		   mv.setViewName("청년취업아카데미개요");
		   return mv;
	   }
	   @RequestMapping("/youth2")
	   public ModelAndView youth2() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 3);
		   mv.setViewName("청년취업아카데미운영절차");
		   return mv;
	   }
	   @RequestMapping("/youth3")
	   public ModelAndView youth3() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 3);
		   mv.setViewName("청년아카데미교육과정");
		   return mv;
	   }
	   @RequestMapping("/youth4")
	   public ModelAndView youth4() {
		   ModelAndView mv = new ModelAndView();
		   mv.addObject("menu", 3);
		   mv.setViewName("청년아카데미교육생선발기준");
		   return mv;
	   }
		
		// <--- 여기까지 입니당 나중에 컨트롤러 하나 만들까유???
	
	@RequestMapping("/api")
	public ModelAndView getData(SearchVO svo, String page) throws Exception  {
		String ip = req.getRemoteAddr();
		if(page == null)
			page = "1";
		
		String srchKeco1 = null;
		String srchKeco2 = null;
		String srchKeco3 = null;
		String srchTraArea1 = null;
		String srchTraArea2 = null;
		String srchTraOrganNm = null;
		String srchTraProcessNm = null;
		String sortCol = null;
		String crseTracseSe = null;
		String srchTraStDt = null;
		String srchTraEndDt = null;
		
		
		
		
		ModelAndView mv = new ModelAndView();
		
		StringBuffer sb = new StringBuffer("https://www.hrd.go.kr/hrdp/api/apipo/APIPO0101T.do?"); // 접속위치
		
		if(svo.getSortCol() != null) 
			sortCol = "&sortCol="+svo.getSortCol();
		
		sb.append("returnType=XML"); // 리턴 타입 XML 고정
		sb.append("&pageSize=30");  // 볼 페이지 수 정하기
		sb.append("&authKey=UzKsh6RpTEHTTwIPUzd8OrcRauHZI14b"); // 인증키
		sb.append("&sort=ASC");  // 정렬 방식
		sb.append("&outType=1"); // 1 : 보기 2 : 상세보기
		sb.append("&srchTraStDt=20211111"); // 시작날짜
		sb.append("&pageNum=1");            // 현재 페이지 값
		
		if(sortCol != null) 
			sb.append(sortCol);
		else
			sb.append("&sortCol=TR_STT_DT");    // 정렬의 기준
		
		sb.append("&srchTraEndDt=20220211"); // 마지막 날짜
		sb.append("&srchTraPattern=N1");  // ??
		sb.append("&srchPart=-99"); // ??
		sb.append("&apiRequstPageUrlAdres=/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp"); // 요청한 api주소
		sb.append("&apiRequstIp="+ip); // 서버 ip 주소
		if(svo != null) {
			// 검색 조건이 하나라도 들어온 경우
			if(svo.getSrchKeco1() != null) {
				srchKeco1 = "&srchKeco1="+svo.getSrchKeco1();
				sb.append(srchKeco1);
			}
			if(svo.getSrchKeco2() != null) {
				srchKeco2 = "&srchKeco2="+svo.getSrchKeco2();
				sb.append(srchKeco2);
			}
			if(svo.getSrchKeco3() != null && svo.getSrchKeco4() == null) {
				srchKeco3 = "&srchKeco3="+svo.getSrchKeco3();
				sb.append(srchKeco3);
			}
			if(svo.getSrchKeco4() != null) {
				srchKeco3 = "&srchKeco3="+svo.getSrchKeco4();
				sb.append(srchKeco3);
			}
			if(svo.getSrchTraArea1() != null) {
				srchTraArea1 = "&srchTraArea1="+svo.getSrchTraArea1();
				sb.append(srchTraArea1);
			}
			if(svo.getSrchTraArea2() != null) {
				srchTraArea2 = "&srchTraArea2="+svo.getSrchTraArea2();
				sb.append(srchTraArea2);
			}
			if(svo.getSrchTraOrganNm() != null) {
				srchTraOrganNm = "&srchTraOrganNm="+svo.getSrchTraOrganNm();
				sb.append(srchTraOrganNm);
			}
			if(svo.getSrchTraProcessNm() != null) {
				srchTraProcessNm = "&srchTraProcessNm="+svo.getSrchTraProcessNm();
				sb.append(srchTraProcessNm);
			}
			if(svo.getCrseTracseSe() != null) {
				crseTracseSe = "&crseTracseSe="+svo.getCrseTracseSe();
				sb.append(crseTracseSe);
			}if(svo.getSrchTraStDt() != null) {
				srchTraStDt = "&srchTraStDt="+svo.getSrchTraStDt();
				sb.append(srchTraStDt);
			}if(svo.getSrchTraEndDt() != null) {
				srchTraEndDt = "&srchTraEndDt="+svo.getSrchTraEndDt();
				sb.append(srchTraEndDt);
			}
		}
		
		URL url = new URL(sb.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
		conn.connect();
		
		SAXBuilder builder = new SAXBuilder();
		Document doc = builder.build(conn.getInputStream());
		Element root = doc.getRootElement();
		Element srchList = root.getChild("srchList");
		List<Element> s_list = srchList.getChildren("scn_list");
		String counts = root.getChildText("scn_cnt");
		api_1[] vo1 = new api_1[s_list.size()];
		if(s_list == null) {
			// 검색결과가 없다는 페이지로 가야한다.
			mv.setViewName("/");
			return mv;
		}
		int i=0;
		for(Element el : s_list) {
			String ADDRESS = el.getChildText("address");
			String CONTENTS = el.getChildText("contents");
			String COURSE_MAN = el.getChildText("courseMan");
			String EI_EMPL_CNT3 = el.getChildText("eiEmplCnt3");
			String EI_EMPL_CNT3_GT10 = el.getChildText("eiEmplCnt3Gt10");
			String EI_EMPL_RATE3 = el.getChildText("eiEmplRate3");
			String EI_EMPL_RATE6 = el.getChildText("eiEmplRate6");
			String GRADE = el.getChildText("grade");
			String IMG_GUBUN = el.getChildText("imgGubun");
			String INST_CD = el.getChildText("instCd");
			String NCS_CD = el.getChildText("ncsCd");
			String REAL_MAN = el.getChildText("realMan");
			String REG_COURSE_MAN = el.getChildText("regCourseMan");
			String SUB_TITLE = el.getChildText("subTitle");
			String SUB_TITLE_LINK = el.getChildText("subTitleLink");
			String SUPER_VISER = el.getChildText("superViser");
			String TEL_NO = el.getChildText("telNo");
			String TITLE = el.getChildText("title");
			String TITLE_ICON = el.getChildText("titleIcon");
			String TITLE_LINK = el.getChildText("titleLink");
			String TRA_END_DATE = el.getChildText("traEndDate");
			String TRA_START_DATE = el.getChildText("traStartDate");
			String TRAIN_TARGET = el.getChildText("trainTarget");
			String TRAIN_TARGET_CD = el.getChildText("trainTargetCd");
			String TRAINST_CST_ID = el.getChildText("trainstCstId");
			String TRPR_DEGR = el.getChildText("trprDegr");
			String TRPR_ID = el.getChildText("trprId");
			String YARD_MAN = el.getChildText("yardMan");
			api_1 avo1 = new api_1(ADDRESS, CONTENTS, COURSE_MAN, EI_EMPL_CNT3, EI_EMPL_CNT3_GT10, EI_EMPL_RATE3, EI_EMPL_RATE6, GRADE, IMG_GUBUN, INST_CD, NCS_CD, REAL_MAN, REG_COURSE_MAN, SUB_TITLE, SUB_TITLE_LINK, SUPER_VISER, TEL_NO, TITLE, TITLE_ICON, TITLE_LINK, TRA_END_DATE, TRA_START_DATE, TRAIN_TARGET, TRAIN_TARGET_CD, TRAINST_CST_ID, TRPR_DEGR, TRPR_ID, YARD_MAN);			
			vo1[i++] = avo1;
		}	
		
			int totalPage = Integer.parseInt(counts);
			//Paging paging = new Paging(Integer.parseInt(page), totalPage, 30, 5);
			mv.addObject("list", vo1);
			mv.addObject("n", totalPage);
			mv.addObject("p", page);
			//mv.addObject("page", paging.getSb().toString());
			mv.setViewName("api");
			return mv;
	}
	
	@RequestMapping(value="/search")
	public ModelAndView index(SearchVO svo, String search_bar, String end, String srchTraArea1, String srchTraArea2, String srchKeco1, String srchTraStDt, String srchTraEndDt, String hei, String page) throws Exception {
		//System.out.println(search_bar);
		//System.out.println(srchTraStDt);
		
		
		ModelAndView mv = new ModelAndView();
		int cnt = 0;
		List<Element> s_list = new ArrayList<Element>();
		
		if(hei == null || (hei != null && hei.trim().equals("")))
			hei = "1000";
		
		if(page == null || (page != null && page.trim().equals("")))
			page = "1";
		page = String.valueOf((Integer.parseInt(page)/15)+1);
		
		mv.addObject("hei", hei);
		mv.addObject("page", page);
		
		/*
		StringBuffer sb = new StringBuffer("https://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp?returnType=XML&authKey=wxEoQ3ObmVu9Tq1FfgJk01ditVDxHNzu&pageSize=10&outType=1&pageNum=1");
			
		if(svo.getSort() != null)
			sb.append("&sort="+svo.getSort());
		else
			sb.append("&sort=ASC");
		
		if(svo.getSortCol() != null)
			sb.append("&sortCol="+svo.getSortCol());
		else
			sb.append("&sortCol=TR_STT_DT");
		*/
		
		svo.setSrchTraProcessNm(search_bar);
		svo.setSrchTraArea1(srchTraArea1);
		svo.setSrchTraArea2(srchTraArea2);
		svo.setSrchKeco1(srchKeco1);
		svo.setSrchTraStDt(srchTraStDt);
		svo.setSrchTraEndDt(srchTraEndDt);;
		
		mv.addObject("search_bar", search_bar);
		mv.addObject("srchTraArea1", srchTraArea1);
		mv.addObject("srchTraArea2", srchTraArea2);
		mv.addObject("srchKeco1", srchKeco1);
		mv.addObject("srchTraStDt", srchTraStDt);
		mv.addObject("srchTraEndDt", srchTraEndDt);
		
		Calendar cal = Calendar.getInstance();
		StringBuffer now_date = new StringBuffer();
		now_date.append(cal.get(Calendar.YEAR));
		String month = String.valueOf(cal.get(Calendar.MONTH)+1);
		if(month.length() == 1) {
			month = 0+month;
		}
		String day = String.valueOf(cal.get(Calendar.DAY_OF_MONTH)+1); 
		if(day.length() == 1) {
			day = 0+day;
		}
		
		now_date.append(month);
		now_date.append(day);
		
		StringBuffer end_date = new StringBuffer();
		if((cal.get(Calendar.MONTH)+1) > 6) {
			end_date.append(cal.get(Calendar.YEAR)+1);
			month = String.valueOf(cal.get(Calendar.MONTH)-5);
		}else {
			end_date.append(cal.get(Calendar.YEAR));
			month = String.valueOf(cal.get(Calendar.MONTH)+7);
		}
		if(month.length() == 1)
			end_date.append(0+month);
		else
			end_date.append(month);
		end_date.append(day);
		if(svo.getSrchTraProcessNm() != null && svo.getSrchTraProcessNm().equals(","))
			svo.setSrchTraProcessNm(null);
		if(svo.getSrchTraArea1() != null && svo.getSrchTraArea1().equals(","))
			svo.setSrchTraArea1(null);
		if(svo.getSrchTraArea2() != null && svo.getSrchTraArea2().equals(","))
			svo.setSrchTraArea2(null);
		if(svo.getSrchKeco1() != null && svo.getSrchKeco1().equals(","))
			svo.setSrchKeco1(null);
		if(svo.getSrchTraStDt() != null && (svo.getSrchTraStDt().equals(",") || svo.getSrchTraStDt().equals("")))
			svo.setSrchTraStDt(now_date.toString());
		else if(svo.getSrchTraStDt() == null)
			svo.setSrchTraStDt(now_date.toString());
		if(svo.getSrchTraEndDt() != null && (svo.getSrchTraEndDt().equals(",") || svo.getSrchTraEndDt().equals("")))
			svo.setSrchTraEndDt(end_date.toString());
		else if(svo.getSrchTraEndDt() == null)
			svo.setSrchTraEndDt(end_date.toString());
		/*
		if(svo.getSrchTraArea1() != null && !svo.getSrchTraArea1().trim().equals(""))
			sb.append("&srchTraArea1="+svo.getSrchTraArea1());
		if(svo.getSrchTraArea2() != null && !svo.getSrchTraArea2().trim().equals(""))
			sb.append("&srchTraArea2="+svo.getSrchTraArea2());
		if(svo.getSrchKeco1() != null && !svo.getSrchKeco1().trim().equals(""))
			sb.append("&srchKeco1="+svo.getSrchKeco1());
		if(svo.getSrchTraStDt() != null && !svo.getSrchTraStDt().trim().equals(""))
			sb.append("&srchTraStDt="+svo.getSrchTraStDt());
		if(svo.getSrchTraEndDt() != null && !svo.getSrchTraEndDt().trim().equals(""))
			sb.append("&srchTraEndDt="+svo.getSrchTraEndDt());
		if(svo.getCrseTracseSe() != null)
			sb.append("&crseTracseSe="+svo.getCrseTracseSe());
		if(svo.getSrchTraGbn() != null)
			sb.append("&srchTraGbn="+svo.getSrchTraGbn());
		if(svo.getSrchTraType() != null)
			sb.append("&srchTraType="+svo.getSrchTraType());
				
		URL url = new URL(sb.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
		conn.setRequestProperty("Content-Type", "application/xml");
		conn.connect();
		
		SAXBuilder builder = new SAXBuilder();
		
		Document document = builder.build(conn.getInputStream());
		
		Element root = document.getRootElement();
		String counts = root.getChildText("scn_cnt");
		//int count = Integer.parseInt(counts)/6;
		 */
		
		DecimalFormat formatter = new DecimalFormat("###,###");
		
		//for(int num=1; num<65; num++) {
		//for(int num=1; num<=count+1; num++) {
		for(int num=1; num<=Integer.parseInt(page); num++) {
			/*
			StringBuffer sb = new StringBuffer("https://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp?returnType=XML&authKey=wxEoQ3ObmVu9Tq1FfgJk01ditVDxHNzu&outType=1");
			sb.append("&pageSize=96");
			sb.append("&pageNum="+num);
					
			if(svo.getSort() != null)
				sb.append("&sort="+svo.getSort());
			else
				sb.append("&sort=ASC");
			
			if(svo.getSortCol() != null)
				sb.append("&sortCol="+svo.getSortCol());
			else
				sb.append("&sortCol=TR_STT_DT");
					
			if(svo.getSrchTraProcessNm() != null && !svo.getSrchTraProcessNm().trim().equals("")) {
				String search = URLEncoder.encode(svo.getSrchTraProcessNm(), "UTF-8");
				sb.append("&srchTraProcessNm="+search);
			}
			if(svo.getSrchTraArea1() != null && !svo.getSrchTraArea1().trim().equals(""))
				sb.append("&srchTraArea1="+svo.getSrchTraArea1());
			if(svo.getSrchTraArea2() != null && !svo.getSrchTraArea2().trim().equals(""))
				sb.append("&srchTraArea2="+svo.getSrchTraArea2());
			if(svo.getSrchKeco1() != null && !svo.getSrchKeco1().trim().equals(""))
				sb.append("&srchKeco1="+svo.getSrchKeco1());
			if(svo.getSrchTraStDt() != null && !svo.getSrchTraStDt().trim().equals(""))
				sb.append("&srchTraStDt="+svo.getSrchTraStDt());
			if(svo.getSrchTraEndDt() != null && !svo.getSrchTraEndDt().trim().equals(""))
				sb.append("&srchTraEndDt="+svo.getSrchTraEndDt());
			if(svo.getCrseTracseSe() != null)
				sb.append("&crseTracseSe="+svo.getCrseTracseSe());
			if(svo.getSrchTraGbn() != null)
				sb.append("&srchTraGbn="+svo.getSrchTraGbn());
			if(svo.getSrchTraType() != null)
				sb.append("&srchTraType="+svo.getSrchTraType());
				*/
			
			StringBuffer sb = new StringBuffer("https://www.hrd.go.kr/hrdp/api/apipo/APIPO0101T.do?"); // 접속위치
			String sortCol = null;
			if(svo.getSortCol() != null) 
				sortCol = "&sortCol="+svo.getSortCol();
			
			sb.append("returnType=XML"); // 리턴 타입 XML 고정
			sb.append("&pageSize=96");  // 볼 페이지 수 정하기
			sb.append("&authKey=UzKsh6RpTEHTTwIPUzd8OrcRauHZI14b"); // 인증키
			sb.append("&sort=ASC");  // 정렬 방식
			sb.append("&outType=1"); // 1 : 보기 2 : 상세보기
			sb.append("&srchTraStDt="+nowDate); // 시작날짜
			sb.append("&pageNum=1");            // 현재 페이지 값
			
			if(sortCol != null) 
				sb.append(sortCol);
			else
				sb.append("&sortCol=TR_STT_DT");    // 정렬의 기준
			
			sb.append("&srchTraEndDt=20220211"); // 마지막 날짜
			sb.append("&srchTraPattern=N1");  // ??
			sb.append("&srchPart=-99"); // ??
			sb.append("&apiRequstPageUrlAdres=/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp"); // 요청한 api주소
			sb.append("&apiRequstIp="+req.getRemoteAddr()); // 서버 ip 주소
			
			if(svo != null) {
				// 검색 조건이 하나라도 들어온 경우
				if(svo.getSrchKeco1() != null) {
					srchKeco1 = "&srchKeco1="+svo.getSrchKeco1();
					sb.append(srchKeco1);
				}
				if(svo.getSrchKeco2() != null) {
					sb.append("&srchKeco2="+svo.getSrchKeco2());
				}
				if(svo.getSrchKeco3() != null && svo.getSrchKeco4() == null) {
					sb.append("&srchKeco3="+svo.getSrchKeco3());
				}
				if(svo.getSrchKeco4() != null) {
					sb.append("&srchKeco3="+svo.getSrchKeco4());
				}
				if(svo.getSrchTraArea1() != null) {
					srchTraArea1 = "&srchTraArea1="+svo.getSrchTraArea1();
					sb.append(srchTraArea1);
				}
				if(svo.getSrchTraArea2() != null) {
					srchTraArea2 = "&srchTraArea2="+svo.getSrchTraArea2();
					sb.append(srchTraArea2);
				}
				if(svo.getSrchTraOrganNm() != null) {
					sb.append("&srchTraOrganNm="+svo.getSrchTraOrganNm());
				}
				if(svo.getSrchTraProcessNm() != null) {
					sb.append("&srchTraProcessNm="+svo.getSrchTraProcessNm());
				}
				if(svo.getCrseTracseSe() != null) {
					sb.append("&crseTracseSe="+svo.getCrseTracseSe());
				}if(svo.getSrchTraStDt() != null) {
					srchTraStDt = "&srchTraStDt="+svo.getSrchTraStDt();
					sb.append(srchTraStDt);
				}if(svo.getSrchTraEndDt() != null) {
					srchTraEndDt = "&srchTraEndDt="+svo.getSrchTraEndDt();
					sb.append(srchTraEndDt);
				}
			}
			
			System.out.println("리퀘스트:"+sb.toString());
			
			URL url = new URL(sb.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			conn.setRequestProperty("Content-Type", "application/xml");
			conn.connect();
			
			SAXBuilder builder = new SAXBuilder();
			
			Document document = builder.build(conn.getInputStream());
			
			Element root = document.getRootElement();
			//Element srchList = root.getChild("srchList");
			Element srchList = (search_bar == null) ? root.getChild("srchList") : root.getChild("srchList");
			s_list.addAll(srchList.getChildren("scn_list"));
			List<String> ss = new ArrayList<String>();
			ss.add(srchList.getChildren("scn_list").toString());
		}
		
		if(search_bar == null) {
			search_bar = "";
		}
		
		for(Element el : s_list) {
			if(el.getChildText("title").toUpperCase().contains(search_bar.toUpperCase()))
				cnt++;
		}
		
		if(cnt > 0) {
			api_1[] ar = new api_1[cnt];
			
			int i=0;
			for(Element el : s_list) {
				if(el.getChildText("title").toUpperCase().contains(search_bar.toUpperCase())) {
					String ADDRESS = el.getChildText("address");
					String CONTENTS = el.getChildText("contents");
					String COURSE_MAN = el.getChildText("courseMan");
					String EI_EMPL_CNT3 = el.getChildText("eiEmplCnt3");
					String EI_EMPL_CNT3_GT10 = el.getChildText("eiEmplCnt3Gt10");
					String EI_EMPL_RATE3 = el.getChildText("eiEmplRate3");
					String EI_EMPL_RATE6 = el.getChildText("eiEmplRate6");
					String GRADE = el.getChildText("grade");
					String IMG_GUBUN = el.getChildText("imgGubun");
					String INST_CD = el.getChildText("instCd");
					String NCS_CD = el.getChildText("ncsCd");
					String REAL_MAN = el.getChildText("realMan");
					String REG_COURSE_MAN = el.getChildText("regCourseMan");
					String SUB_TITLE = el.getChildText("subTitle");
					String SUB_TITLE_LINK = el.getChildText("subTitleLink");
					String SUPER_VISER = el.getChildText("superViser");
					String TEL_NO = el.getChildText("telNo");
					String TITLE = el.getChildText("title").replace("[", "(").replace("]", ")").replace("&", ",");
					String TITLE_ICON = el.getChildText("titleIcon");
					String TITLE_LINK = el.getChildText("titleLink");
					String TRA_END_DATE = el.getChildText("traEndDate");
					String TRA_START_DATE = el.getChildText("traStartDate");
					String TRAIN_TARGET = el.getChildText("trainTarget");
					String TRAIN_TARGET_CD = el.getChildText("trainTargetCd");
					String TRAINST_CST_ID = el.getChildText("trainstCstId");
					String TRPR_DEGR = el.getChildText("trprDegr");
					String TRPR_ID = el.getChildText("trprId");
					String YARD_MAN = el.getChildText("yardMan");
					String real_price = "0";
					if(COURSE_MAN != null && REAL_MAN != null) {
						if(COURSE_MAN.equals(""))
							COURSE_MAN = "0";
						if(REAL_MAN.equals("") || REAL_MAN.equals("0"))
							REAL_MAN = COURSE_MAN;
						real_price = String.valueOf((Integer.parseInt(REAL_MAN) - Integer.parseInt(COURSE_MAN)));
						if(Integer.parseInt(real_price) < 0)
							real_price = "0";
						COURSE_MAN = formatter.format(Integer.parseInt(COURSE_MAN));
						REAL_MAN = formatter.format(Integer.parseInt(REAL_MAN));
						real_price = formatter.format(Integer.parseInt(real_price));
					}
					String imageCode = null;
					
					if(NCS_CD != null) {
						String img_code = NCS_CD.substring(0, 4);
						String img_code2 = NCS_CD.substring(0, 6);
						int random = (int) ((Math.random()*2)+1);
						int random2 = (int) ((Math.random()*2)+11);
						if(img_code2.equals("120202")) {
							imageCode = img_code2+String.valueOf(random);
						}else if(TITLE.contains("바리스타") || TITLE.contains("커피")) {
							imageCode = img_code+String.valueOf(random2);
						}else {
							imageCode = img_code+String.valueOf(random);
						}
					}
					
					if(YARD_MAN != null && !YARD_MAN.equals("0")) {
						//api_1 avo1 = new api_1(ADDRESS, CONTENTS, COURSE_MAN, EI_EMPL_CNT3, EI_EMPL_CNT3_GT10, EI_EMPL_RATE3, EI_EMPL_RATE6, GRADE, IMG_GUBUN, INST_CD, NCS_CD, REAL_MAN, REG_COURSE_MAN, SUB_TITLE, SUB_TITLE_LINK, SUPER_VISER, TEL_NO, TITLE, TITLE_ICON, TITLE_LINK, TRA_END_DATE, TRA_START_DATE, TRAIN_TARGET, TRAIN_TARGET_CD, TRAINST_CST_ID, TRPR_DEGR, TRPR_ID, YARD_MAN, real_price);
						api_1 avo1 = new api_1(ADDRESS, CONTENTS, COURSE_MAN, EI_EMPL_CNT3, EI_EMPL_CNT3_GT10, EI_EMPL_RATE3, EI_EMPL_RATE6, GRADE, IMG_GUBUN, INST_CD, NCS_CD, REAL_MAN, REG_COURSE_MAN, SUB_TITLE, SUB_TITLE_LINK, SUPER_VISER, TEL_NO, TITLE, TITLE_ICON, TITLE_LINK, TRA_END_DATE, TRA_START_DATE, TRAIN_TARGET, TRAIN_TARGET_CD, TRAINST_CST_ID, TRPR_DEGR, TRPR_ID, YARD_MAN, real_price, imageCode);
						ar[i++] = avo1;
					}
					
				}
			}
			
			if(end == null && ar.length < 6) {
				end = String.valueOf(ar.length);
			}else if(end == null && ar.length >= 6) {
				end = "6";
			}
			System.out.println(ar.length);
			//System.out.println(search_bar);
			//System.out.println(end);
			mv.addObject("ar_size", ar.length);
			
			//System.out.println("리스폰스:"+sb.toString());
			api_1[] vo = new api_1[Integer.parseInt(end)];
			int j=0;
			for(api_1 avo : vo) {
				vo[j] = ar[j];
				j++;
			}
			
			
			mv.addObject("end", end);
			mv.addObject("list", vo);
			mv.addObject("search_bar", search_bar);
			
			/*
			String userName = (String) session.getAttribute("userName");
			System.out.println(userName);
			*/
			
		}
		mv.setViewName("search");
		return mv;
	}
	
	@RequestMapping(value="/view", method=RequestMethod.GET)
	public ModelAndView view(String TRAINST_CST_ID, String TRPR_DEGR, String TRPR_ID, String like, String u_id) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		/*
		String userName = (String) session.getAttribute("userName");
		System.out.println(userName);
		*/
		
		mv.addObject("TRAINST_CST_ID", TRAINST_CST_ID);
		
		StringBuffer sb = new StringBuffer("https://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_2.jsp?authKey=qWqEb8rhoMy5PH165fAA0bQIXsuy9OvZ&returnType=XML&outType=2");
		sb.append("&srchTorgId="+TRAINST_CST_ID);
		sb.append("&srchTrprDegr="+TRPR_DEGR);
		sb.append("&srchTrprId="+TRPR_ID);
		
		System.out.println("리퀘스트:"+sb.toString());
		
		URL url = new URL(sb.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
		conn.setRequestProperty("Content-Type", "application/xml");
		conn.connect();
		
		SAXBuilder builder = new SAXBuilder();
		
		Document document = builder.build(conn.getInputStream());
		
		Element root = document.getRootElement();
		Element base_info = root.getChild("inst_base_info");
		Element detail_info = root.getChild("inst_detail_info");
		
		DecimalFormat formatter = new DecimalFormat("###,###");
		
		String ADDR1 = base_info.getChildText("addr1");
		if(ADDR1 != null) {
		String ADDR2 = base_info.getChildText("addr2");
		String FILE_PATH = base_info.getChildText("filePath");
		String HP_ADDR = base_info.getChildText("hpAddr");
		String INO_NM = base_info.getChildText("inoNm");
		String INST_INO = base_info.getChildText("instIno");
		String INST_PER_TRCO = base_info.getChildText("instPerTrco");
		String NCS_CD = base_info.getChildText("ncsCd");
		String NCS_NM = base_info.getChildText("ncsNm");
		String NCS_YN = base_info.getChildText("ncsYn");
		String NON_NCS_COURSE_PRCTTQ_TIME = base_info.getChildText("nonNcsCoursePrcttqTime");
		String NON_NCS_COURSE_THEORY_TIME = base_info.getChildText("nonNcsCourseTheoryTime");
		String P_FILE_NAME = base_info.getChildText("pFileName");
		String PER_TRCO = base_info.getChildText("perTrco");
		String TORG_PAR_GRAD = base_info.getChildText("torgParGrad");
		String TR_DCNT = base_info.getChildText("trDcnt");
		String TRAING_MTH_CD = base_info.getChildText("traingMthCd");
		String TRPR_CHAP = base_info.getChildText("trprChap");
		String TRPR_CHAP_EMAIL = base_info.getChildText("trprChapEmail");
		String TRPR_CHAP_TEL = base_info.getChildText("trprChapTel");
		String TRPR_CHAP_Tbase_info = base_info.getChildText("TRPR_CHAP_Tbase_info");
		String TRPR_GBN = base_info.getChildText("trprGbn");
		String TRPR_NM = base_info.getChildText("trprNm");
		String TRPR_TARGET = base_info.getChildText("trprTarget");
		String TRPR_TARGET_NM = base_info.getChildText("trprTargetNm");
		String TRTM = base_info.getChildText("TRTM");
		String ZIP_CD = base_info.getChildText("zipCd");
		String real_price = "0";
		
		if(INST_PER_TRCO != null && PER_TRCO != null) {
			real_price = String.valueOf((Integer.parseInt(INST_PER_TRCO) - Integer.parseInt(PER_TRCO)));
			if(Integer.parseInt(real_price) < 0)
				real_price = "0";
			INST_PER_TRCO = formatter.format(Integer.parseInt(INST_PER_TRCO));
			PER_TRCO = formatter.format(Integer.parseInt(PER_TRCO));
			real_price = formatter.format(Integer.parseInt(real_price));
		}
		
		if(TRPR_CHAP == null)
			TRPR_CHAP = "";
		
		api_2_1 avo = new api_2_1(ADDR1, ADDR2, FILE_PATH, HP_ADDR, INO_NM, INST_INO, INST_PER_TRCO, NCS_CD, NCS_NM, NCS_YN, NON_NCS_COURSE_PRCTTQ_TIME, NON_NCS_COURSE_THEORY_TIME, P_FILE_NAME, PER_TRCO, TORG_PAR_GRAD, TR_DCNT, TRAING_MTH_CD, TRPR_CHAP, TRPR_CHAP_EMAIL, TRPR_CHAP_TEL, TRPR_DEGR, TRPR_GBN, TRPR_ID, TRPR_NM, TRPR_TARGET, TRPR_TARGET_NM, TRTM, ZIP_CD, real_price);
		
		String GOV_BUSI_NM = detail_info.getChildText("govBusiNm");
		String TORG_GBN_CD = detail_info.getChildText("torgGbnCd");
		String TOT_TRAING_DYCT = detail_info.getChildText("totTraingDyct");
		String TOT_TRAING_TIME = detail_info.getChildText("totTraingTime");
		String TOTAL_CRS_AT = detail_info.getChildText("totalCrsAt");
		if(TOTAL_CRS_AT != null)
			TOTAL_CRS_AT = formatter.format(Integer.parseInt(TOTAL_CRS_AT));
		
		api_2_2 avo2 = new api_2_2(GOV_BUSI_NM, TORG_GBN_CD, TOT_TRAING_DYCT, TOT_TRAING_TIME, TOTAL_CRS_AT, TRPR_DEGR, TRPR_ID, TRPR_NM);
		
		sb = new StringBuffer("https://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_3.jsp?authKey=wxEoQ3ObmVu9Tq1FfgJk01ditVDxHNzu&returnType=XML&outType=2");
		sb.append("&srchTorgId="+TRAINST_CST_ID);
		sb.append("&srchTrprDegr="+TRPR_DEGR);
		sb.append("&srchTrprId="+TRPR_ID);
		
		System.out.println("리퀘스트:"+sb.toString());
		
		url = new URL(sb.toString());
		conn = (HttpURLConnection) url.openConnection();
		
		conn.setRequestProperty("Content-Type", "application/xml");
		conn.connect();
		
		builder = new SAXBuilder();
		
		document = builder.build(conn.getInputStream());
		
		root = document.getRootElement();
		Element scn_list = root.getChild("scn_list");
		
		api_3 avo3 = null;
		String TOT_FXNUM = null;
		String TR_STA_DT = null;
		
		if(scn_list != null) {
			String EI_EMPL_RATE_3 = scn_list.getChildText("eiEmplRate3");
			String EI_EMPL_CNT_3 = scn_list.getChildText("eiEmplRate6");
			String EI_EMPL_RATE_6 = scn_list.getChildText("hrdEmplCnt6");
			String EI_EMPL_CNT_6 = scn_list.getChildText("hrdEmplRate6");
			String HRD_EMPL_RATE_6 = scn_list.getChildText("instIno");
			TOT_FXNUM = scn_list.getChildText("totFxnum");
			String TOT_PAR_MKS = scn_list.getChildText("totFxnum");
			String TOT_TRCO = scn_list.getChildText("totParMks");
			String TR_END_DT = scn_list.getChildText("trEndDt");
			TR_STA_DT = scn_list.getChildText("trStaDt");
			
			avo3 = new api_3(EI_EMPL_RATE_3, EI_EMPL_CNT_3, EI_EMPL_RATE_6, EI_EMPL_CNT_6, HRD_EMPL_RATE_6, EI_EMPL_CNT_6, INST_INO, TOT_FXNUM, TOT_PAR_MKS, TOT_TRCO, TR_END_DT, TR_STA_DT, TRPR_DEGR);
		}else {
			avo3 = new api_3(null, null, null, null, null, null, null, null, null, null, null, null, null);
		}
		
		sb = new StringBuffer("https://www.hrd.go.kr/hrdp/api/apipo/APIPO0101T.do?"); // 접속위치
		
		sb.append("returnType=XML"); // 리턴 타입 XML 고정
		sb.append("&pageSize=30");  // 볼 페이지 수 정하기
		sb.append("&authKey=UzKsh6RpTEHTTwIPUzd8OrcRauHZI14b"); // 인증키
		sb.append("&sort=ASC");  // 정렬 방식
		sb.append("&sortCol=TR_STT_DT");  // 정렬 기준
		sb.append("&outType=1"); // 1 : 보기 2 : 상세보기
		sb.append("&srchTraStDt="+nowDate); // 시작날짜
		sb.append("&pageNum=1");            // 현재 페이지 값
		
		
		sb.append("&srchTraEndDt=20220211"); // 마지막 날짜
		sb.append("&srchTraPattern=N1");  // ??
		sb.append("&srchPart=-99"); // ??
		sb.append("&apiRequstPageUrlAdres=/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp"); // 요청한 api주소
		sb.append("&apiRequstIp="+req.getRemoteAddr()); // 서버 ip 주소
		String ino = URLEncoder.encode(INO_NM, "UTF-8");
		sb.append("&srchTraOrganNm="+ino);
		sb.append("&srchTraStDt=20210101&srchTraEndDt=20211231");
		
		/*
		sb = new StringBuffer("https://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp?returnType=XML&authKey=wxEoQ3ObmVu9Tq1FfgJk01ditVDxHNzu&pageNum=1&pageSize=100&srchTraStDt=20210101&srchTraEndDt=20211231&outType=1&sort=ASC&sortCol=TR_STT_DT");
		String ino = URLEncoder.encode(INO_NM, "UTF-8");
		sb.append("&srchTraOrganNm="+ino);
		*/
		
		System.out.println("리퀘스트:"+sb.toString());
		
		url = new URL(sb.toString());
		conn = (HttpURLConnection) url.openConnection();
		
		conn.setRequestProperty("Content-Type", "application/xml");

		conn.connect();
		
		builder = new SAXBuilder();
		
		document = builder.build(conn.getInputStream());
		
		root = document.getRootElement();
		Element srchList = root.getChild("srchList");
		List<Element> s_list = srchList.getChildren("scn_list");
		
		int k3=0;
		int k6=0;
		int sum3=0;
		int avg3=0;
		int sum6=0;
		int avg6=0;
				
		if(s_list != null) {
			for(Element el : s_list) {
				String EI_EMPL_RATE3 = el.getChildText("eiEmplRate3");
				String EI_EMPL_RATE6 = el.getChildText("eiEmplRate6");
				if(EI_EMPL_RATE3 != null && EI_EMPL_RATE3 != "" && Float.parseFloat(EI_EMPL_RATE3) > 0) {
					sum3 += Float.parseFloat(EI_EMPL_RATE3);
					k3++;
				}
				if(EI_EMPL_RATE6 != null && EI_EMPL_RATE6 != "" && Float.parseFloat(EI_EMPL_RATE6) > 0) {
					sum6 += Float.parseFloat(EI_EMPL_RATE6);
					k6++;
				}
			}
			if(k3>0)
				avg3 = sum3/k3;
			if(k6>0)
				avg6 = sum6/k6;
		}
		
		mv.addObject("rate3", avg3);
		mv.addObject("rate6", avg6);
		
		mv.addObject("vo", avo);
		mv.addObject("vo2", avo2);
		mv.addObject("vo3", avo3);
		
		String address = URLEncoder.encode(ADDR1,"utf-8");
		String api = "https://naveropenapi.apigw.ntruss.com/map-geocode/v2/geocode?query="+address;
		sb = new StringBuffer();
		
		url = new URL(api);
		conn = (HttpURLConnection) url.openConnection();
		
		conn.setRequestProperty("Content-Type", "application/json");
		conn.setRequestProperty("X-NCP-APIGW-API-KEY-ID", "4txv35ahqp");
		conn.setRequestProperty("X-NCP-APIGW-API-KEY", "zk7J9vSGJehMsQjEocpsQdhv7Rd7r4NlQkPhYDcd");
		conn.setRequestMethod("GET");
		
		conn.connect();
		
		InputStreamReader in = new InputStreamReader(conn.getInputStream(), "utf-8");
		BufferedReader br = new BufferedReader(in);
		String line;
		while((line = br.readLine()) != null) {
			sb.append(line).append("\n");
		}
				
		JSONParser parser = new JSONParser();
		JSONObject jsonObject;
		JSONObject jsonObject2;
		JSONArray jsonArray;
		String x = "";
		String y = "";
		
		jsonObject = (JSONObject) parser.parse(sb.toString());
		jsonArray = (JSONArray) jsonObject.get("addresses");
		
		for(int i=0; i<jsonArray.size(); i++) {
			jsonObject2 = (JSONObject) jsonArray.get(i);
			if(jsonObject2.get("x") != null) {
				x = jsonObject2.get("x").toString();
			}
			if(jsonObject2.get("y") != null) {
				y = jsonObject2.get("y").toString();
			}
		}
		
		mv.addObject("x", x);
		mv.addObject("y", y);
		
		br.close();
		in.close();
		
		mv.setViewName("view");
		mv.addObject("u_id", u_id);
		
		if(t_dao.search(TRPR_ID))
			t_dao.add(TRPR_ID, TRPR_NM, real_price, TOT_FXNUM, TR_STA_DT, TRPR_CHAP);
		
		if(like == null)
			like = "false";
		
		if(u_id != null) {
			if(t_dao.search2(u_id, TRPR_ID)) {
				like = "true";
			}
		}
		System.out.println(u_id);
		System.out.println(like);
		
		mv.addObject("like", like);

		LikeVO[] lvo = t_dao.list2(u_id);
		mv.addObject("lvo", lvo);
		
		AfterVO[] afvo = af_dao.list(TRPR_ID);
		mv.addObject("afvo", afvo);
		
		HelpVO[] hvo = af_dao.list2(TRPR_ID);
		mv.addObject("hvo", hvo);
		}else {
			mv.setViewName("redirect:search");
		}
		
		return mv;
	}
	
	@RequestMapping(value="/view", method=RequestMethod.POST)
	public ModelAndView view2(String TRAINST_CST_ID, String TRPR_DEGR, String TRPR_ID, String INO_NM, String TR_STA_DT, String TR_END_DT, String u_id, String content, String help, String like, String add) throws Exception {
		ModelAndView mv = new ModelAndView();
		mv.addObject("TRAINST_CST_ID", TRAINST_CST_ID);
		mv.addObject("TRPR_DEGR", TRPR_DEGR);
		mv.addObject("TRPR_ID", TRPR_ID);
		mv.addObject("u_id", u_id);
		
		Calendar cal = Calendar.getInstance();
		StringBuffer now_date = new StringBuffer();
		now_date.append(cal.get(Calendar.YEAR));
		now_date.append("-");
		now_date.append(cal.get(Calendar.MONTH)+1);
		now_date.append("-");
		now_date.append(cal.get(Calendar.DAY_OF_MONTH));
		
		if(u_id != null && !u_id.trim().equals("")) {
			if(help == null && af_dao.list_id(u_id, TRPR_ID) && add.equals("1")) {
				af_dao.add(TRPR_ID, u_id, content);
			}
			
			if(help != null && help.equals("true") && add.equals("2")) {
				af_dao.add2(TRPR_ID, u_id, content);
			}
			
			if(like != null && like.equals("false") && add.equals("3")) {
				t_dao.add2(u_id, TRPR_ID, INO_NM, TR_STA_DT, TR_END_DT, now_date.toString());
				mv.addObject("like", "true");
			}
			if(like != null && like.equals("true") && add.equals("3")) {
				t_dao.del(u_id, TRPR_ID);
				mv.addObject("like", "false");
			}
			
			mv.setViewName("redirect:view");
		}else {
			mv.setViewName("redirect:ex");
		}
		
		return mv;
	}
	
	// 수강신청 테이블에 저장하는 기능
	@RequestMapping("/enrolmentInsert")
	public String enrolmentInsert(EnrolVO evo) throws Exception {

		int total = e_dao.totalNum(evo.getE_uid());
		int check = e_dao.check(evo.getE_trid());
		String alerts = "";
		String contents = "";
		String goHome = null;
		String alert = (check > 0) ? "동일과정 수강신청은 한번만 가능합니다." : "수강신청은 5번까지만 가능합니다.";
		if(total < 5 && check < 1) {
			System.out.println("HI");
			e_dao.addEnrolment(evo);
			alerts = "수강신청이 완료되었습니다.";
		}
		String content = URLEncoder.encode(alert, "UTF-8");
		contents = URLEncoder.encode(alerts, "UTF-8");
		goHome = (total >= 5 || check > 0) ? "redirect:/nocontent?sb=alert('"+content+"');" :  "redirect:/nocontent?sb=alert('"+contents+"');";
		
		return goHome;
	}
	
	@RequestMapping("/nocontent")
	public ModelAndView nocontent(String sb) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("sb", sb);
		mv.setViewName("nocontent");
		return mv;
	}
	
	@RequestMapping("/registers")
	public ModelAndView registers(String u_id, String u_name, String u_birth, String u_email, String u_phone, String u_addr, String TRPR_ID,String company, String TRPR_NM, String email) {
		ModelAndView mv = new ModelAndView();
		
		TRPR_NM = (TRPR_NM.contains("////") ? TRPR_NM.replace("////", "&") :TRPR_NM );
		
		mv.addObject("id", u_id);
		mv.addObject("name", u_name);
		mv.addObject("birth", u_birth);
		mv.addObject("email", u_email);
		mv.addObject("phone", u_phone);
		mv.addObject("addr", u_addr);
		mv.addObject("tr_id", TRPR_ID);
		mv.addObject("company", company);
		mv.addObject("TRPR_NM", TRPR_NM);
		mv.addObject("email", email);
		
		mv.setViewName("registers");
		return mv;
	}
	
	@RequestMapping(value="/register", method = RequestMethod.GET)
	public ModelAndView register1(String u_id, String TRPR_ID, String company, String TRPR_NM, String email) throws Exception {
		ModelAndView mv = new ModelAndView();
		if(u_id != null && !u_id.trim().equals("")) {
			UmemVO uvo = u_dao.searchUser2(u_id);
			mv.addObject("uvo", uvo);
			mv.addObject("TRPR_ID", TRPR_ID);
			mv.addObject("company", company);
			mv.addObject("TRPR_NM", TRPR_NM);
			mv.addObject("email", email);
			mv.setViewName("register");
		}else {
			mv.setViewName("redirect:/ex");
		}
		return mv;
	}
	
	@RequestMapping(value="/register", method=RequestMethod.POST)
	public ModelAndView register2(String u_id, String u_name, String u_birth, String u_email, String u_phone, String u_addr, String TRPR_ID) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		if(regi_dao.reg_search(u_id, TRPR_ID)) {
			regi_dao.register(u_id, u_name, u_birth, u_email, u_phone, u_addr, TRPR_ID);
		}
		mv.setViewName("endPage");
		
		return mv;
	}	
	
}
