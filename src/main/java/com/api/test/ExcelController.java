package com.api.test;


import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
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
import api.dao.RdDAO;
import api.dao.UmemDAO;
import api.u_member.vo.UmemVO;
import api.vo.Search2;

@Controller
public class ExcelController {
	
	
	@Autowired
	private RdDAO r_dao;
	
	@Autowired
	private UmemDAO u_dao;
	
	@RequestMapping(value = "/poiExcel")
	public void poiTest(Model model, HttpServletResponse response,
			HttpServletResponse request,String Excel) throws Exception{

		ExcelConversion ex = new ExcelConversion();
		
		if(Excel.equals("2")) {
			Search2[] svo = r_dao.getFamous();
			ex.getRecommended("추천학원", svo,"Recommended",response);
		}else if(Excel.equals("1")) {
			UmemVO[] uvo = u_dao.getList();
			ex.getList("회원정보", uvo,"USER",response);
		}
		
		
		
	}
}