package com.api.test;


import java.io.FileInputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.ClientAnchor;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Drawing;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Picture;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.util.IOUtils;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import api.action.ExcelConversion;
import api.dao.EnrolDAO;
import api.dao.RdDAO;
import api.dao.UmemDAO;
import api.u_member.vo.UmemVO;
import api.vo.EnrolVO;
import api.vo.Search2;

@Controller
public class ExcelController {
	
	
	@Autowired
	private RdDAO r_dao;
	
	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private EnrolDAO e_dao;
	
	@RequestMapping(value = "/poiExcel")
	public void poiTest(Model model, HttpServletResponse response,
			HttpServletResponse request,String Excel,String companyName) throws Exception{

		ExcelConversion ex = new ExcelConversion();
		
		if(Excel.equals("2")) {
			// 날짜 구하기
			Date date = new Date();
	        // 포맷변경 ( 년월일 시분초)
	        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd"); 
	        // Java 시간 더하기
	        Calendar cal = Calendar.getInstance();
	        cal.add(Calendar.DATE, -1);
	        String yesterday = sdformat.format(cal.getTime());
			Search2[] svo = r_dao.getFamous(yesterday);
			ex.getRecommended("추천학원", svo,"Recommended",response);
		}else if(Excel.equals("1")) {
			UmemVO[] uvo = u_dao.getList();
			ex.getList("회원정보", uvo,"USER",response);
		}else if(Excel.equals("3")) {
			// 기업회원 다운로드
			EnrolVO[] evo = e_dao.getList(companyName);
			ex.getEnrolment("수강신청현황", evo, "%EC%88%98%EA%B0%95%EC%8B%A0%EC%B2%AD%ED%98%84%ED%99%A9", response);
		}
		
		
		
		
	}
}