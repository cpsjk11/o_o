package com.api.test;

import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import api.dao.BbsDAO;
import api.vo.BbsVO;
import api.vo.CommVO;
import spring.util.FileRenameUtil;
import api.vo.ImgVO;
import api.action.BbsPaging;

@Controller
public class BbsController {

	@Autowired
	private BbsDAO b_dao;
	
	private List<BbsVO> r_list;
	
	@Autowired
	private ServletContext application;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private HttpServletRequest request;
	
	private String img_path = "resources/editor_img";
	private String bbs_upload = "/bbs_upload";

	// **페이징기법 변수들**
	// 리스트 원하는대로 보고싶으면 여기서 조정하면됨!!
	int block_list = 8;// 한페이지당 보여질 게시물의 수
	int block_page = 3;// 한블럭당 보여질 페이지 수
	int nowPage;
	int rowTotal; // 전체게시물의 수
	String pageCode; // 여기다가 페이징코드를 담아서 보낼거야 !!
	// **********************
	
	List<BbsVO> b_list;
	
	//게시물 리스트보기
	@RequestMapping("/helpSc")
	public ModelAndView goHelp(String cPage, String bname, String status) {
		ModelAndView mv = new ModelAndView();
		String sb = null;
		
		if (cPage == null)
			nowPage = 1;
		else
			nowPage = Integer.parseInt(cPage);

		if (bname == null)
			bname = "회원자유게시판";

		sb = checkBname(bname);
		
		String views = (bname == null) ? "" : "bname="+bname;
		
		status = (status == null) ? "0" : status;
		
		rowTotal = b_dao.getTotalCount(bname,status);
		BbsPaging page = new BbsPaging(nowPage, rowTotal, block_list, block_page,views);
		
		int begin = page.getBegin();
		int end = page.getEnd();
		
		pageCode = page.getSb().toString();
		
		BbsVO[] ar = b_dao.getList(begin, end, bname, null);
		
		
		mv.addObject("status",status);
		mv.addObject("categoryStyle", sb);
		mv.addObject("bname",bname);
		mv.addObject("ar", ar);
		mv.addObject("nowPage", nowPage);
		mv.addObject("rowTotal", rowTotal);
		mv.addObject("blockList", block_list);
		mv.addObject("pageCode", pageCode);
		mv.setViewName("/helpSc");
		return mv;
	}
	
	//글쓰기 페이지로 이동
	@RequestMapping("/helpWrite")
	public ModelAndView goWrite(BbsVO vo, String bname) {
		ModelAndView mv = new ModelAndView();
		String sb = null;
		
		
		if(bname.equals("공지사항") || bname.equals("국삐활용가이드")) {
			mv.setViewName("/");
		}else {
			sb = checkBname(bname);
		}
		
		 mv.addObject("categoryStyle",sb);
		 
		mv.addObject("bname",bname);
		mv.setViewName("/write");
		return mv;
	}

	@RequestMapping(value="/saveImg", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> saveImg(ImgVO vo){
		Map<String, String> map = new HashMap<String, String>();
		
		MultipartFile f = vo.getS_file();
		String fname = null;
		
		if(f.getSize() > 0) {
			String realPath = application.getRealPath(img_path);
			
			fname = f.getOriginalFilename();
			
			fname = FileRenameUtil.checkSameFileName(fname, realPath);
			
			try {
				f.transferTo(new File(realPath, fname));
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		String c_path = request.getContextPath();
		
		map.put("url", c_path+img_path);
		map.put("fname", fname);
		
		return map;
	}
	
	@RequestMapping(value="/write", method=RequestMethod.POST)
	public ModelAndView write(BbsVO vo, String bname, String status, String admin )throws Exception{
		ModelAndView mv = new ModelAndView();
		String views = null;
		
		if(!status.equals("6")) {
			views = (admin == null) ? "redirect:helpSc" : "redirect:a_QNA";
		}
		if(status.equals("6")) {
			views = "redirect:/";
		}
		 
		 String sb = null;
		 sb = checkBname(bname);
		
		if(bname.equals("문의게시판")) {
			vo.setStatus("5");
		}
		if(bname.equals("제휴문의")) {
			vo.setStatus("6");
		}
		if(!bname.equals("제휴문의") && !bname.equals("문의게시판")) {
			vo.setStatus("0");
		}
		vo.setIp(request.getRemoteAddr());
		
		b_dao.add(vo);
		mv.addObject("categoryStyle",sb);
		mv.addObject("bname",bname);
		 mv.setViewName(views);
		
		return mv;
	}
	
	//게시물상세보기
	@RequestMapping("/helpScV")
	public ModelAndView view(String b_idx, String nowPage, String bname,String sb) {
		ModelAndView mv = new ModelAndView();
		sb = null;
		if (bname == null)
			bname = "회원자유게시판";

		sb = checkBname(bname);
		
		BbsVO vo = b_dao.getBbs(b_idx);
		
		Object obj = application.getAttribute("read_list");
		if(obj == null){
			r_list = new ArrayList<BbsVO>();
			application.setAttribute("read_list", r_list);
		}else {
			r_list = (List<BbsVO>) obj;
			
			ApplicationContext ctx =
			WebApplicationContextUtils.getWebApplicationContext(application);
			
			BbsDAO bbsdao = ctx.getBean(BbsDAO.class);
		}
		if(b_idx != null){
			BbsVO bvo = b_dao.getBbs(b_idx);// 사용자가 선택한 게시물
			
			boolean chk = checkBbs(vo);//한번이라도 읽었던 게시물인지 확인한다.
			
			if(chk){ //한번도 보지않은 게시물인 경우 조회수 증가
				b_dao.updateHit(b_idx);
				r_list.add(vo);
			}
		mv.addObject("bname",bname);
		mv.addObject("categoryStyle", sb);
		mv.addObject("vo",vo);
		mv.addObject("nowPage",nowPage);
		mv.addObject("ip", request.getRemoteAddr());
		mv.setViewName("/helpScV");
			}
			return mv;
		}
	
	//게시물 수정페이지로 이동
		@RequestMapping("/helpScEdit")
		public ModelAndView edit(BbsVO vo, String b_idx, String bname,
				String user, RedirectAttributes rt) {
			ModelAndView mv = new ModelAndView();
			String sb = null;
			sb = checkBname(vo.getBname());
			
			vo = b_dao.getBbs(b_idx);
			
			if(!vo.getId().equals(user)) {
				rt.addAttribute("bname", bname);
				mv.setViewName("redirect:/helpSc");
			}else {
				mv.addObject("bname",bname);
				mv.addObject("categoryStyle", sb);
				mv.addObject("nowPage",nowPage);
				mv.addObject("ip", request.getRemoteAddr());
				mv.addObject("vo",vo);
				mv.setViewName("/helpScEdit");
			}
			
			
			
			return mv;
		}
		// 게시물 수정하기
		@RequestMapping(value="/edit", method=RequestMethod.POST)
		public ModelAndView edit(BbsVO vo, String bname ,RedirectAttributes rt) {
			ModelAndView mv = new ModelAndView();
			String sb = null;
			sb = checkBname(vo.getBname());
			String ctx = request.getContentType();

			String fname = null;

			if (ctx.startsWith("application")) {

				BbsVO bvo = b_dao.getBbs(vo.getB_idx());
				mv.addObject("vo", bvo);
			} else if (ctx.startsWith("multipart")) {
				MultipartFile f = vo.getFile();
//				if (f.getSize() > 0) {
//					String realPath = application.getRealPath(bbs_upload);
//					fname = f.getOriginalFilename();
//					fname = FileRenameUtil.checkSameFileName(fname, realPath);
	//
//					try {
//						f.transferTo(new File(realPath, fname));
//					} catch (Exception e) {
//						e.printStackTrace();
//					}
//					vo.setFile_name(fname);
//					vo.setOri_name(fname);
//				}

				vo.setIp(request.getRemoteAddr());
				b_dao.editBbs(vo);
				rt.addAttribute("bname", bname);
				mv.setViewName("redirect:/helpSc?b_idx=" + vo.getB_idx());
				mv.addObject("categoryStyle", sb);
			}

			return mv;
		}
		
	
	@RequestMapping(value = "/ansWrite", method = RequestMethod.POST)
	public ModelAndView ans_write(CommVO cvo, String cPage,String bname, String b_idx, String admin) throws Exception {
		ModelAndView mv = new ModelAndView();
		BbsVO vo = b_dao.getBbs(b_idx);
		if(bname != null) {
			bname = URLEncoder.encode(bname, "UTF-8");
		}
		String sb = null;
		sb = checkBname(vo.getBname());
		String views = (admin == null) ? "redirect:/helpScV?b_idx="+cvo.getB_idx()+"&cPage="+cPage+"&bname="+bname : "redirect:/a_answer?b_idx="+b_idx;
		
		String name = (bname == null) ? "문의게시판" : bname;
		
		if (name.equals("문의게시판")) 
			b_dao.qnaSuccess(b_idx, "5");
		
		cvo.setWriter(vo.getWriter());
		cvo.setIp(request.getRemoteAddr());
		b_dao.addAns(cvo);
		mv.addObject("cvo",cvo);
		mv.addObject("categoryStyle",sb);
		mv.setViewName(views);
		
		return mv;
		
	}
	
	
	@RequestMapping("test")
	public String test() {
		return "/testPage";
	}
	
	
	
	
	
	public boolean checkBbs(BbsVO vo){
		boolean value = true;
		
		for(BbsVO bvo : r_list){
			if(bvo.getB_idx().equals(vo.getB_idx())){
				value = false;
				break;
			}
		}
		
		return value;
	}
	
	
	
	
	public String checkBname(String bname) {
		String sb = null;
		if(bname.equals("자주묻는질문")) {
			sb = ("<style>\r\n"
					+ "	#category_area a:nth-child(1) {\r\n"
					+ "		color: black;\r\n"
					+ "}\r\n"
					+ "</style>");
		};
		if(bname.equals("회원자유게시판")) {
			sb = ("<style>\r\n"
					+ "	#category_area a:nth-child(2) {\r\n"
					+ "		color: black;\r\n"
					+ "}\r\n"
					+ "</style>");
		};
		if(bname.equals("공지사항")) {
			sb = ("<style>\r\n"
					+ "	#category_area a:nth-child(3) {\r\n"
					+ "		color: black;\r\n"
					+ "}\r\n"
					+ "</style>");
		};
		if(bname.equals("문의게시판")) {
			sb = ("<style>\r\n"
					+ "	#category_area a:nth-child(4) {\r\n"
					+ "		color: black;\r\n"
					+ "}\r\n"
					+ "</style>");
		};
		if(bname.equals("국삐활용가이드")) {
			sb = ("<style>\r\n"
					+ "	#category_area a:nth-child(5) {\r\n"
					+ "		color: black;\r\n"
					+ "}\r\n"
					+ "</style>");
		};
		if(bname == null) {
			sb = null;
		}
		return sb;
	}
}
