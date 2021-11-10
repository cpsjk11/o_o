package com.increpas.hrd;

import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import hrd.vo.HrdVO;
import hrd.action.Paging;

@Controller
public class HrdController {

	
	@Autowired
	private HttpSession session;
	
	String searchValue1;
	String page1;
	String startDate1;
	String endDate1;
	
	
	@RequestMapping("/hrd")
	public ModelAndView getData(String page) throws Exception  {
		
		if(page == null)
			page = "1";
		
		ModelAndView mv = new ModelAndView();
		
		StringBuffer sb = new StringBuffer("https://www.hrd.go.kr/hrdp/api/apipo/APIPO0101T.do?");
		sb.append("srchTraEndDt=20220208");
		sb.append("&pageSize=100");
		sb.append("&srchTraStDt=20211108"); // 이게 날짜다
		sb.append("&sortCol=TR_STT_DT"); 
		sb.append("&authKey=qWqEb8rhoMy5PH165fAA0bQIXsuy9OvZ"); // 인증키 부분
		sb.append("&sort=ASC&returnType=XML"); 
		sb.append("&outType=1"); 
		sb.append("&pageNum="+page); 
		sb.append("&srchTraPattern=N1");
		sb.append("&srchPart=-99"); 
		sb.append("&apiRequstPageUrlAdres=/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp"); 
		sb.append("&apiRequstIp=221.155.199.241"); // 요청자 아이피
		
		URL url = new URL(sb.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		
		conn.connect();
		
		SAXBuilder builder = new SAXBuilder();
		Document doc = builder.build(conn.getInputStream());
		Element root = doc.getRootElement();
		Element srchList = root.getChild("srchList");
		List<Element> s_list = srchList.getChildren("scn_list");
		String counts = root.getChildText("scn_cnt");
		HrdVO[] hvo = new HrdVO[s_list.size()];
		int num = 0;
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
			HrdVO hrd = new HrdVO(ADDRESS, CONTENTS, COURSE_MAN, EI_EMPL_CNT3, EI_EMPL_CNT3_GT10, EI_EMPL_RATE3, EI_EMPL_RATE6, GRADE, IMG_GUBUN, INST_CD, NCS_CD, REAL_MAN, REG_COURSE_MAN, SUB_TITLE, SUB_TITLE_LINK, SUPER_VISER, TEL_NO, TITLE, TITLE_ICON, TITLE_LINK, TRA_END_DATE, TRA_START_DATE, TRAIN_TARGET, TRAIN_TARGET_CD, TRAINST_CST_ID, TRPR_DEGR, TRPR_ID, YARD_MAN);

			
			hvo[i++] = hrd;
		}
		int totalPage = Integer.parseInt(counts);
		Paging page2 = new Paging(Integer.parseInt(page),totalPage , 100, 5,"hrd?page");
		
		String Key = "qWqEb8rhoMy5PH165fAA0bQIXsuy9OvZ";
		mv.addObject("page", page2.getSb().toString());
		mv.addObject("hrd", hvo);
		mv.addObject("k", Key);
		mv.addObject("n", totalPage);
		mv.addObject("p", page);
		mv.setViewName("hrd");
		
		return mv;
	}
	@RequestMapping("/hrd.search")
	@ResponseBody
	public ModelAndView searchList(String searchValue, String page, String startDate, String endDate) throws Exception {
		
		if(searchValue != null) {
			searchValue1 = searchValue;
			startDate1 = startDate;
			endDate1 = endDate;
		}
		if(page == null)
			page = "1";
		System.out.println(searchValue1);
		ModelAndView mv = new ModelAndView();
		
		StringBuffer sb = new StringBuffer("https://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_1.jsp?");
		sb.append("returnType=XML");
		sb.append("&authKey=qWqEb8rhoMy5PH165fAA0bQIXsuy9OvZ"); // 이게 날짜다
		sb.append("&pageNum="+page); 
		sb.append("&pageSize=100"); // 이게 날짜다
		sb.append("&srchTraStDt="+startDate1); 
		sb.append("&srchTraEndDt="+endDate1); // 인증키 부분
		sb.append("&outType=1"); 
		sb.append("&sort=ASC&sortCol=TR_STT_DT"); 
		if(searchValue1 != null)
			sb.append("&srchTraArea1="+searchValue1);
		
		URL url = new URL(sb.toString());
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		System.out.println(sb.toString());
		conn.connect();
		
		SAXBuilder builder = new SAXBuilder();
		Document doc = builder.build(conn.getInputStream());
		Element root = doc.getRootElement();
		Element srchList = root.getChild("srchList");
		List<Element> s_list = srchList.getChildren("scn_list");
		String counts = root.getChildText("scn_cnt");
		HrdVO[] hvo = new HrdVO[s_list.size()];
		int num = 0;
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
			HrdVO hrd = new HrdVO(ADDRESS, CONTENTS, COURSE_MAN, EI_EMPL_CNT3, EI_EMPL_CNT3_GT10, EI_EMPL_RATE3, EI_EMPL_RATE6, GRADE, IMG_GUBUN, INST_CD, NCS_CD, REAL_MAN, REG_COURSE_MAN, SUB_TITLE, SUB_TITLE_LINK, SUPER_VISER, TEL_NO, TITLE, TITLE_ICON, TITLE_LINK, TRA_END_DATE, TRA_START_DATE, TRAIN_TARGET, TRAIN_TARGET_CD, TRAINST_CST_ID, TRPR_DEGR, TRPR_ID, YARD_MAN);

			
			hvo[i++] = hrd;
		}
		int totalPage = Integer.parseInt(counts);
		Paging page2 = new Paging(Integer.parseInt(page),totalPage , 100, 5,"hrd.search?page");
		
		String Key = "qWqEb8rhoMy5PH165fAA0bQIXsuy9OvZ";
		mv.addObject("page", page2.getSb().toString());
		mv.addObject("hrd", hvo);
		mv.addObject("k", Key);
		mv.addObject("n", totalPage);
		mv.addObject("p", page);
		mv.setViewName("hrd");
		
		return mv;
	}
}
