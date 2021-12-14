package com.api.test;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import api.action.BbsPaging;
import api.action.CheckChart;
import api.action.Paging;
import api.action.RecommendedSchool;
import api.dao.BbsDAO;
import api.dao.RdDAO;
import api.dao.UmemDAO;
import api.u_member.vo.UmemVO;
import api.vo.BbsVO;
import api.vo.Search2;



@Controller
public class AddController {

	@Autowired 
	private RdDAO r_dao;
	
	@Autowired
	private UmemDAO u_dao;
	
	@Autowired
	private BbsDAO b_dao;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private ServletContext application;
	
	// 추천학원기능을 저장하는 기능
	@RequestMapping("/admin")
	public ModelAndView add(Search2 s2) {
		ModelAndView mv = new ModelAndView();
		
		int cnt = r_dao.addAppend(s2);
		
		mv.setViewName("redirect:/a_index");
		return mv;
	}
	
	// 회사의 정보들의 순위 이름등을 변경하는 기능!
	@RequestMapping("/updateCompany")
	@ResponseBody
	public Map<String, String> update(Search2 s2) {
		Map<String, String> map = new HashMap<String, String>();
		
		int cnt = r_dao.updateCompany(s2);
		
		if(cnt > 0) 
			map.put("value", "1");
		else
			map.put("value", "2");
		
		return map;
		
	}
	
	@RequestMapping("/a_login")
	public String st() {
		return "admin/a_login";
	}
	@RequestMapping("/a_notice")
	public String notice() {
		return "admin/a_notice";
	}
	
	@RequestMapping("/a_index")
	public ModelAndView goIndex() throws Exception {
		ModelAndView mv = new ModelAndView();
		
		// 날짜 구하기
		Date ydate = new Date();
        // 포맷변경 ( 년월일 시분초)
        SimpleDateFormat sdformat = new SimpleDateFormat("yyyy-MM-dd"); 
        // Java 시간 더하기
        Calendar cal = Calendar.getInstance();
        cal.add(Calendar.DATE, -1);
        String yesterday = sdformat.format(cal.getTime());
		
		List<Map<String, String>> list = null;
		
		Search2[] rd = r_dao.getFamous(yesterday); 
		int usernum = u_dao.finduser();
		int companyNum = u_dao.findCompanySu();
		String result[] = null;
		String count[] = null;
		
		String userX = "";
		String Y = "";
		String companyX = "";
		
		
		// 현재 날짜를 비교해 최근 3~6개월 정도에 결과값을 가져오는 기능
		Date dates = new Date();
        // 포맷변경 ( 년월일 시분초)
        SimpleDateFormat sdformats = new SimpleDateFormat("yyyy-MM-dd"); 
        // Java 시간 더하기
        Calendar cals = Calendar.getInstance();
        cal.add(Calendar.DATE,+1);
        String to_date = sdformat.format(cal.getTime()); 
		
		int s = to_date.indexOf("0");
		int n = to_date.indexOf("-");
		int k = to_date.lastIndexOf("-");
		int user = 0;
		int com = 0;
		
		String yearMonth = to_date.substring(s+1);
		String year = ((to_date.substring(s+1,n))+"-01-01");
		CheckChart chk = new CheckChart();
		for(int a=0; a<2; a++) {
			list = u_dao.searchDate(yearMonth,year,String.valueOf(a));
			Map<String, String> map = new HashMap<String, String>();
			LinkedHashSet<String> set = new LinkedHashSet<String>();
		
			String res[] = new String[list.size()];
			result = new String[list.size()];
			String date[] = new String[list.size()];
			count = new String[list.size()];
			
			for(int i=0; i<list.size(); i++) {
				map = list.get(i);
				res[i] = map.toString();
				
				int id = res[i].indexOf(",");
				int idx = res[i].indexOf("=");
				int idxs = res[i].lastIndexOf("}");
				int idxss = res[i].indexOf("-");
				
				count[i] = res[i].substring(idxss+1,idxs)+"월";
				result[i] = res[i].substring(idx+1, id);
				
			}
			if(a == 0) {
				// 유저 회원가입 정보
				userX = chk.getChart(result);
				Y = chk.getChart(count);
			}
			
				
			if(a == 1) {
				companyX = chk.getChart(result);
			}
			
				
		}
		int searchNum =  b_dao.qnaSu();
		int totalNum = 1000;	
		String total = (double) usernum / (double) totalNum * 100.0 + "%"; 
		
		/*String resultX = chk.getChart(result);
		String resultY = chk.getChart(count);*/
		
		mv.addObject("ux", userX);
		mv.addObject("ychart", Y);
		mv.addObject("searchNum", searchNum);
		mv.addObject("cx", companyX);
		mv.addObject("userNum", usernum);
		mv.addObject("company", rd);
		mv.addObject("total", total);
		mv.addObject("companyNum", companyNum);
		mv.setViewName("admin/a_index");
		return mv;
	}
	
	// 삭제 버튼을 눌렀을때 삭제!
	@RequestMapping("/a_del")
	@ResponseBody
	public Map<String, String> delCompany(String id, String stat){
		Map<String, String> map = new HashMap<String, String>();
		if(stat == null)
			stat = "3";
		if(stat.equals("3")) {
			// 추천학원 삭제일 경우
			int cnt = r_dao.delCompany(id);
			
			if(cnt > 0) {
				map.put("value", "1");
			}else
				map.put("value", "2");
			
		}else {
			int cnt = u_dao.delList(id,stat);
			
			if(cnt > 0) {
				map.put("value", "1");
			}else
				map.put("value", "2");
		}
		return map;
		
	}
	
	// 일반 회원들을 반환해주는 기능
	@RequestMapping("/a_user")
	public ModelAndView goUser(String page, String member,String listnum,String search,String value) {
		ModelAndView mv = new ModelAndView();
		String paging = "";
		int total = 0;
		
		if(member == null) {
			mv.setViewName("redirect:/a_index");
			return mv;
		}
		
		if(member.equals("0"))
			total = u_dao.finduser();
		else if(member.equals("1"))
			total = u_dao.findCompany();
		
		if(listnum == null)
			listnum = "5";
		
		if(page == null)
			page = "1";
		
			
		if(search == null)
			search = "0";
		
		UmemVO[] uvo = null;
		
		Paging pa = new Paging(Integer.parseInt(page), total, Integer.parseInt(listnum), 5, "a_user?member="+member);
		if(search.equals("0")) {
			uvo = u_dao.getMember(member, String.valueOf(pa.getBegin()), String.valueOf(pa.getEnd()));
			paging = pa.getSb().toString();
		}
		
		else {
			// 검색된 값이 있을때 이다.
				total = u_dao.searchFind(member, search, value);
				Paging pa1 = new Paging(Integer.parseInt(page), total, Integer.parseInt(listnum), 5, "a_user?member="+member+"&search="+search+"&value="+value);
				System.out.println(search);
				System.out.println(member+"&search="+search+"&value="+value);
				System.out.println(pa1.getBegin());
				System.out.println(pa1.getEnd());
				uvo = u_dao.getSearchMember(member, String.valueOf(pa1.getBegin()), String.valueOf(pa1.getEnd()), search, value);
				//System.out.println(uvo.toString());
				paging = pa1.getSb().toString();
				
		}
		
		mv.addObject("all", uvo);
		mv.addObject("listnum", listnum);
		mv.addObject("pa", page);
		mv.addObject("member", member);
		mv.addObject("page", paging);
		mv.setViewName("admin/a_user");
		
		return mv;
	}
	
	@RequestMapping("/a_QNA")
	public ModelAndView qna(String page, String listnum, String status, String bname) {
		ModelAndView mv = new ModelAndView();
		
			int nowPage = 0;
			
			if (page == null)
				nowPage = 1;
			else
				nowPage = Integer.parseInt(page);

			bname = (bname == null) ? "문의게시판" : bname;
			
			String searchItem = (bname.equals("공지사항")) ? "a_QNA?bname=공지사항" : "a_QNA?";
			searchItem = (bname.equals("제휴문의")) ? "a_QNA?bname=제휴문의" : searchItem;
			
			if(listnum == null)
				listnum = "5";
			String stat = (status == null) ? "0" : status;
			int rowTotal = b_dao.getQnaCount(bname,stat);
			Paging pa = new Paging(nowPage, rowTotal, Integer.parseInt(listnum),5,searchItem);
			
			int begin = pa.getBegin();
			int end = pa.getEnd();
			
			String pageCode = pa.getSb().toString();
			BbsVO[] ar = b_dao.getList(begin, end, bname, stat);
			mv.addObject("qna", ar);
			mv.addObject("status", stat);
			mv.addObject("listnum", listnum);
			mv.addObject("pa", page);
			mv.addObject("paging", pageCode);
			mv.setViewName("admin/a_QNA");
		return mv;
	}
	
	@RequestMapping("/a_answer")
	public ModelAndView view(String b_idx, String page) {
		ModelAndView mv = new ModelAndView();
		
		BbsVO vo = b_dao.getBbs(b_idx);
		
		mv.addObject("vo",vo);
		mv.addObject("nowPage",page);
		mv.addObject("ip", request.getRemoteAddr());
		mv.setViewName("admin/answer");
			
			return mv;
		}
	
	@RequestMapping("a_qnaSuccess") // 답변 완료 하기 기능
	@ResponseBody
	public Map<String, String> qnaSuccess(String b_idx) {
		Map<String, String> map = new HashMap<String, String>();
		int cnt = b_dao.qnaSuccess(b_idx, "4");
		
		if(cnt > 0)
			map.put("result", "1");
		else
			map.put("result", "2");
		
		return map;
	}
	// 수정하기
	@RequestMapping("/a_edit")
	public ModelAndView edit(BbsVO vo, String b_idx,String user,String page) {

		ModelAndView mv = new ModelAndView();
		
		vo = b_dao.getBbs(b_idx);
	
		
		mv.addObject("nowPage",page);
		mv.addObject("ip", request.getRemoteAddr());
		mv.addObject("vo",vo);
		mv.setViewName("admin/a_notice");
	
		return mv;
	}
}
