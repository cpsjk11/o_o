package com.increpas.hrd;

import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.input.SAXBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hrd.vo.InVO;
import hrd.vo.IvosVO;

@Controller
public class InController {
	
	@RequestMapping("/hrd.res")
	public ModelAndView getresponse(String TRAINST_CST_ID1,String TRPR_DEGR1, String TRPR_ID1, String authKey1) throws Exception {
			
			ModelAndView mv = new ModelAndView();
			
			StringBuffer sb = new StringBuffer("https://www.hrd.go.kr/jsp/HRDP/HRDPO00/HRDPOA60/HRDPOA60_2.jsp?");
			String k = "qWqEb8rhoMy5PH165fAA0bQIXsuy9OvZ";
			String id = "AIG20200000303492";
			String t_id = "500020028399";
			sb.append("authKey="+authKey1); // 인증키 부분
			sb.append("&returnType=XML"); // 받아야 하는 파일 형식
			sb.append("&outType=2"); // 
			sb.append("&srchTrprId="+TRPR_ID1); // 훈련과정 아이디 먼저 받아서 넘어와야 한다.
			sb.append("&srchTrprDegr="+TRPR_DEGR1); // 훈련회차 
			sb.append("&srchTorgId="+TRAINST_CST_ID1); // 훈련기관 아이디
			
			
			URL url = new URL(sb.toString());
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			conn.connect();
			
			SAXBuilder builder = new SAXBuilder();
			Document doc = builder.build(conn.getInputStream());
			Element root = doc.getRootElement();
			List<Element> b_list = root.getChildren("inst_base_info");
			List<Element> d_list = root.getChildren("inst_detail_info");
			List<Element> f_list = root.getChildren("inst_facility_detail_info");
			List<Element> e_list = root.getChildren("inst_eqpm_detail_info_list");
			InVO[] ivo = new InVO[b_list.size()]; 
			IvosVO[] ivos = new IvosVO[d_list.size()];
			int i =0;
			for(Element el : b_list) {
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
				String TRPR_CHAP_TEL = el.getChildText("trprChapTel");
				String TRPR_DEGR = el.getChildText("trprDegr");
				String TRPR_GBN = el.getChildText("trprGbn");
				String TRPR_ID = el.getChildText("trprId");
				String TRPR_NM = el.getChildText("trprNm");
				String TRPR_TARGET = el.getChildText("trprTarget");
				String TRPR_TARGET_NM = el.getChildText("trprTargetNm");
				String TRTM = el.getChildText("trtm");
				String ZIP_CD = el.getChildText("zipCd");
				
				
				InVO vo = new InVO(ADDR1, ADDR2, FILE_PATH, HP_ADDR, INO_NM, INST_INO, INST_PER_TRCO, NCS_CD, NCS_NM, NCS_YN, NON_NCS_COURSE_PRCTTQ_TIME, NON_NCS_COURSE_THEORY_TIME, P_FILE_NAME, PER_TRCO, TORG_PAR_GRAD, TR_DCNT, TRAING_MTH_CD, TRPR_CHAP, TRPR_CHAP_EMAIL, TRPR_CHAP_TEL, TRPR_DEGR, TRPR_GBN, TRPR_ID, TRPR_NM, TRPR_TARGET, TRPR_TARGET_NM, TRTM, ZIP_CD);
				
				
				ivo[i++] = vo;
			}
			
			int j =0;
			for(Element el_d : d_list) {
				String GOV_BUSI_NM = el_d.getChildText("govBusiNm");
				String TORG_GBN_CD = el_d.getChildText("torgGbnCd");
				String TOT_TRAING_DYCT = el_d.getChildText("totTraingDyct");
				String TOT_TRAING_TIME = el_d.getChildText("totTraingTime");
				String TOTAL_CRS_AT = el_d.getChildText("totalCrsAt");
				String TRPR_DEGR = el_d.getChildText("trprDegr");
				String TRPR_ID = el_d.getChildText("trprId");
				String TRPR_NM = el_d.getChildText("trprNm");
				
				IvosVO vos = new IvosVO(GOV_BUSI_NM, TORG_GBN_CD, TOT_TRAING_DYCT, TOT_TRAING_TIME, TOTAL_CRS_AT, TRPR_DEGR, TRPR_ID, TRPR_NM);
				
				
				ivos[j++] =  vos;
			}
			mv.addObject("base", ivo);
			mv.addObject("detail", ivos);
			mv.setViewName("in");
			
			return mv;
	}
}
