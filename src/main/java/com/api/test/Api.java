package com.api.test;

import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import api.action.Paging;
import api.dao.ArDAO;
import api.dao.RdDAO;
import api.vo.Api00;
import api.vo.Search2;
import api.vo.SearchVO;
import api.vo.api_1;
import api.vo.api_2_1;
import api.vo.api_2_2;
import api.vo.api_2_3;
import api.vo.api_2_4;


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
	private ArDAO a_dao;
	
	@Autowired
	private RdDAO r_dao;
	
	@RequestMapping("/ex")
	public String view() {
		return"login";
	}
	
	// 메인 페이지 나오자 마자 인기 학원 띄워주는 기능
	@RequestMapping("/")
	public ModelAndView test() throws Exception {
		ModelAndView mv = new ModelAndView();
		Search2[] se = a_dao.getFamous();
		String ip = req.getRemoteAddr();
		Search2[] rd = r_dao.getFamous();
		
		
		for(int i=0; i<se.length; i++) {
			StringBuffer sb = new StringBuffer("https://www.hrd.go.kr/hrdp/api/apipo/APIPO0102T.do?");	
			sb.append("authKey=UzKsh6RpTEHTTwIPUzd8OrcRauHZI14b");
			sb.append("&srchTrprId="+se[i].getSrchTrprId());
			sb.append("&returnType=XML");
			sb.append("&srchTorgId="+se[i].getSrchTorgId());
			sb.append("&srchTrprDegr="+se[i].getSrchTrprDegr());
			sb.append("&outType=2");
			sb.append("&srchTraPattern=N1");
			sb.append("&apiRequstPageUrlAdres=/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_2.jsp");
			sb.append("&apiRequstIp="+ip);
			
			URL url = new URL(sb.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			conn.connect();
			
			SAXBuilder builder = new SAXBuilder();
			Document doc = builder.build(conn.getInputStream());
			Element root = doc.getRootElement();
			List<Element> s_list = root.getChildren("inst_base_info");
			api_2_1[] vo1 = new api_2_1[s_list.size()];
			api_2_2[] vo2 = new api_2_2[s_list.size()];
			api_2_3[] vo3 = new api_2_3[s_list.size()];
			api_2_4[] vo4 = new api_2_4[s_list.size()];
			
			int j=0;
			for(Element el : s_list) {
				String ADDR1 = el.getChildText("addr1");
				String ADDR2 = el.getChildText("addr2");
				String FILE_PATH = el.getChildText("filePath");
				String HP_ADDR = el.getChildText("hpAddr");
				String INO_NM = el.getChildText("inoNm");
				String INST_INO = el.getChildText("instIno");
				String INST_PER_TRCO = el.getChildText("instPerTrco");
				String NCS_CD = el.getChildText("ncsCd");
				String NCS_NM = el.getChildText("ncsNm");
				String NCS_YN = el.getChildText("ncsYn");
				String NON_NCS_COURSE_PRCTTQ_TIME = el.getChildText("nonNcsCoursePrcttqTime");
				String NON_NCS_COURSE_THEORY_TIME = el.getChildText("nonNcsCourseTheoryTime");
				String P_FILE_NAME = el.getChildText("pFileName");
				String PER_TRCO = el.getChildText("perTrco");
				String TORG_PAR_GRAD = el.getChildText("torgParGrad");
				String TR_DCNT = el.getChildText("trDcnt");
				String TRAING_MTH_CD = el.getChildText("traingMthCd");
				String TRPR_CHAP = el.getChildText("trprChap");
				String TRPR_CHAP_EMAIL = el.getChildText("trprChapEmail");
				String TRPR_CHAP_TEL = el.getChildText("TRPR_CHAP_TEL");
				String TRPR_DEGR = el.getChildText("trprChapTel");
				String TRPR_GBN = el.getChildText("trprGbn");
				String TRPR_ID = el.getChildText("trprId");
				String TRPR_NM = el.getChildText("trprNm");
				String TRPR_TARGET = el.getChildText("trprTarget");
				String TRPR_TARGET_NM = el.getChildText("trprTargetNm");
				String TRTM = el.getChildText("TRTM");
				String ZIP_CD = el.getChildText("ZIP_CD");
				
				api_2_1 avo = new api_2_1(ADDR1, ADDR2, FILE_PATH, HP_ADDR, INO_NM, INST_INO, INST_PER_TRCO, NCS_CD, NCS_NM, NCS_YN, NON_NCS_COURSE_PRCTTQ_TIME, NON_NCS_COURSE_THEORY_TIME, P_FILE_NAME, PER_TRCO, TORG_PAR_GRAD, TR_DCNT, TRAING_MTH_CD, TRPR_CHAP, TRPR_CHAP_EMAIL, TRPR_CHAP_TEL, TRPR_DEGR, TRPR_GBN, TRPR_ID, TRPR_NM, TRPR_TARGET, TRPR_TARGET_NM, TRTM, ZIP_CD);
				
				vo1[j++] = avo;
			}// for end
			mv.addObject("avo"+i, vo1);
		}// for end
		
		for(int i=0; i<rd.length; i++) {
			StringBuffer sb = new StringBuffer("https://www.hrd.go.kr/hrdp/api/apipo/APIPO0102T.do?");	
			sb.append("authKey=UzKsh6RpTEHTTwIPUzd8OrcRauHZI14b");
			sb.append("&srchTrprId="+rd[i].getSrchTrprId());
			sb.append("&returnType=XML");
			sb.append("&srchTorgId="+rd[i].getSrchTorgId());
			sb.append("&srchTrprDegr="+rd[i].getSrchTrprDegr());
			sb.append("&outType=2");
			sb.append("&srchTraPattern=N1");
			sb.append("&apiRequstPageUrlAdres=/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_2.jsp");
			sb.append("&apiRequstIp="+ip);
			
			URL url = new URL(sb.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			conn.connect();
			
			SAXBuilder builder = new SAXBuilder();
			Document doc = builder.build(conn.getInputStream());
			Element root = doc.getRootElement();
			List<Element> s_list = root.getChildren("inst_base_info");
			api_2_1[] vo1 = new api_2_1[s_list.size()];
			api_2_2[] vo2 = new api_2_2[s_list.size()];
			api_2_3[] vo3 = new api_2_3[s_list.size()];
			api_2_4[] vo4 = new api_2_4[s_list.size()];
			
			int j=0;
			for(Element el : s_list) {
				String ADDR1 = el.getChildText("addr1");
				String ADDR2 = el.getChildText("addr2");
				String FILE_PATH = el.getChildText("filePath");
				String HP_ADDR = el.getChildText("hpAddr");
				String INO_NM = el.getChildText("inoNm");
				String INST_INO = el.getChildText("instIno");
				String INST_PER_TRCO = el.getChildText("instPerTrco");
				String NCS_CD = el.getChildText("ncsCd");
				String NCS_NM = el.getChildText("ncsNm");
				String NCS_YN = el.getChildText("ncsYn");
				String NON_NCS_COURSE_PRCTTQ_TIME = el.getChildText("nonNcsCoursePrcttqTime");
				String NON_NCS_COURSE_THEORY_TIME = el.getChildText("nonNcsCourseTheoryTime");
				String P_FILE_NAME = el.getChildText("pFileName");
				String PER_TRCO = el.getChildText("perTrco");
				String TORG_PAR_GRAD = el.getChildText("torgParGrad");
				String TR_DCNT = el.getChildText("trDcnt");
				String TRAING_MTH_CD = el.getChildText("traingMthCd");
				String TRPR_CHAP = el.getChildText("trprChap");
				String TRPR_CHAP_EMAIL = el.getChildText("trprChapEmail");
				String TRPR_CHAP_TEL = el.getChildText("TRPR_CHAP_TEL");
				String TRPR_DEGR = el.getChildText("trprChapTel");
				String TRPR_GBN = el.getChildText("trprGbn");
				String TRPR_ID = el.getChildText("trprId");
				String TRPR_NM = el.getChildText("trprNm");
				String TRPR_TARGET = el.getChildText("trprTarget");
				String TRPR_TARGET_NM = el.getChildText("trprTargetNm");
				String TRTM = el.getChildText("TRTM");
				String ZIP_CD = el.getChildText("ZIP_CD");
				
				api_2_1 avo = new api_2_1(ADDR1, ADDR2, FILE_PATH, HP_ADDR, INO_NM, INST_INO, INST_PER_TRCO, NCS_CD, NCS_NM, NCS_YN, NON_NCS_COURSE_PRCTTQ_TIME, NON_NCS_COURSE_THEORY_TIME, P_FILE_NAME, PER_TRCO, TORG_PAR_GRAD, TR_DCNT, TRAING_MTH_CD, TRPR_CHAP, TRPR_CHAP_EMAIL, TRPR_CHAP_TEL, TRPR_DEGR, TRPR_GBN, TRPR_ID, TRPR_NM, TRPR_TARGET, TRPR_TARGET_NM, TRTM, ZIP_CD);
				
				vo1[j++] = avo;
			}// for end
			mv.addObject("avos"+i, vo1);
		}
		
		mv.addObject("length", se.length);
		mv.addObject("lengths", rd.length);
		mv.setViewName("home");
		
		
		
		return mv;
		
	}
	
	
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
			Paging paging = new Paging(Integer.parseInt(page), totalPage, 30, 5);
			mv.addObject("list", vo1);
			mv.addObject("n", totalPage);
			mv.addObject("p", page);
			mv.addObject("page", paging.getSb().toString());
			mv.setViewName("api");
			return mv;
	}
	
	@RequestMapping(value="/search")
	public ModelAndView index(SearchVO svo, String search_bar, String end, String srchTraArea1, String srchTraArea2, String srchKeco1, String srchTraStDt, String srchTraEndDt, String hei) throws Exception {
		//System.out.println(search_bar);
		//System.out.println(srchTraStDt);
		
		
		ModelAndView mv = new ModelAndView();
		
		if(hei == null || (hei != null && hei.trim().equals("")))
			hei = "1000";
		
		mv.addObject("hei", hei);
		
		StringBuffer sb = new StringBuffer("https://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp?returnType=XML&authKey=wxEoQ3ObmVu9Tq1FfgJk01ditVDxHNzu&pageSize=100&outType=1");
		for(int num=1; num<100; num++)
			sb.append("&pageNum="+num);
				
		if(svo.getSort() != null)
			sb.append("&sort="+svo.getSort());
		else
			sb.append("&sort=ASC");
		
		if(svo.getSortCol() != null)
			sb.append("&sortCol="+svo.getSortCol());
		else
			sb.append("&sortCol=TR_STT_DT");
		
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
		
		
		if(svo.getSrchTraArea1() != null && svo.getSrchTraArea1().equals(","))
			svo.setSrchTraArea1(null);
		if(svo.getSrchTraArea2() != null && svo.getSrchTraArea2().equals(","))
			svo.setSrchTraArea2(null);
		if(svo.getSrchKeco1() != null && svo.getSrchKeco1().equals(","))
			svo.setSrchKeco1(null);
		if(svo.getSrchTraStDt() != null && (svo.getSrchTraStDt().equals(",") || svo.getSrchTraStDt().equals("")))
			svo.setSrchTraStDt("20211118");
		else if(svo.getSrchTraStDt() == null)
			svo.setSrchTraStDt("20211118");
		if(svo.getSrchTraEndDt() != null && (svo.getSrchTraEndDt().equals(",") || svo.getSrchTraEndDt().equals("")))
			svo.setSrchTraEndDt("20220216");
		else if(svo.getSrchTraEndDt() == null)
			svo.setSrchTraEndDt("20220216");
		
		
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
		
		System.out.println("리퀘스트:"+sb.toString());
		
		
		URL url = new URL(sb.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
		conn.setRequestProperty("Content-Type", "application/xml");
		conn.connect();
		
		SAXBuilder builder = new SAXBuilder();
		
		Document document = builder.build(conn.getInputStream());
		
		Element root = document.getRootElement();
		Element srchList = root.getChild("srchList");
		List<Element> s_list = srchList.getChildren("scn_list");
		String counts = root.getChildText("scn_cnt");
		
		int cnt=0;
		
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
					ar[i++] = avo1;
				}
			}
			
			if(end == null && ar.length < 6) {
				end = String.valueOf(ar.length);
			}else if(end == null && ar.length >= 6) {
				end = "6";
			}
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
		}
		mv.setViewName("search");
		return mv;
	}
	
	@RequestMapping(value="/view")
	public ModelAndView view(String title, String addr, String tel) throws Exception {
		ModelAndView mv = new ModelAndView();
		
		mv.addObject("title", title);
		mv.addObject("addr", addr);
		mv.addObject("tel", tel);
		
		mv.setViewName("view");
		
		return mv;
	}
	
	@RequestMapping("/join")
	public String login() {
		return "join";
	}
	@RequestMapping("u_mem_join")
	public String gou_join() {
		return "uJoin";
	}
}
