package com.api.test;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	BbsDAO b_dao;
	
	@Autowired
	private ServletContext application;
	
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
	public ModelAndView goHelp(String cPage, String bname) {
		ModelAndView mv = new ModelAndView();
		
		if (cPage == null)
			nowPage = 1;
		else
			nowPage = Integer.parseInt(cPage);

		if (bname == null)
			bname = "회원자유게시판";
		
		
		rowTotal = b_dao.getTotalCount(bname);
		BbsPaging page = new BbsPaging(nowPage, rowTotal, block_list, block_page);
		
		int begin = page.getBegin();
		int end = page.getEnd();
		
		pageCode = page.getSb().toString();
		
		BbsVO[] ar = b_dao.getList(begin, end, bname);
		
		
		
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
	public ModelAndView goWrite(String bname) {
		ModelAndView mv = new ModelAndView();
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
	public ModelAndView write(BbsVO vo, String bname, RedirectAttributes rt)throws Exception{
		ModelAndView mv = new ModelAndView();
		
		
//		// 첨부된 파일을 vo로부터 얻어낸다.
//		MultipartFile mf = vo.getFile();
//		
//		if(mf.getSize() > 0) {
//			//절대경로 얻기
//			String realPath = application.getRealPath(bbs_upload);
//			
//			//파일명 얻기
//			String fname = mf.getOriginalFilename();
//			
//			//동일한 파일명이 있다면 fname변경!
//			fname = FileRenameUtil.checkSameFileName(fname, realPath);
//			
//			mf.transferTo(new File(realPath, fname));
//			
//			//첨부된 파일명을 DB에 저장하기 위해 vo안에 있는 file_name에 저장
//			vo.setFile_name(fname);
//			vo.setOri_name(fname);
//		}
			
		vo.setIp(request.getRemoteAddr());
		
		b_dao.add(vo);
		rt.addAttribute("bname", bname);
		mv.addObject("bname",bname);
		mv.setViewName("/redirect:/helpSc");
		
		return mv;
	}
	
	//게시물상세보기
	@RequestMapping("/helpScV")
	public ModelAndView view(String b_idx, String nowPage) {
		ModelAndView mv = new ModelAndView();
		
		BbsVO vo = b_dao.getBbs(b_idx);
		
		b_dao.updateHit(vo.getB_idx());
		
		mv.addObject("vo",vo);
		mv.addObject("nowPage",nowPage);
		mv.addObject("ip", request.getRemoteAddr());
		mv.setViewName("/helpScV");
		return mv;
	}
	
	@RequestMapping("/ansWrite")
	public ModelAndView ans_write(CommVO cvo, String cPage,String bname, String b_idx) {
		ModelAndView mv = new ModelAndView();
		BbsVO vo = b_dao.getBbs(b_idx);
		
		cvo.setWriter(vo.getWriter());
		cvo.setIp(request.getRemoteAddr());
		b_dao.addAns(cvo);
		mv.addObject("cvo",cvo);
		mv.setViewName("redirect:/helpScV?b_idx="+cvo.getB_idx()+"&cPage="+cPage+"&bname="+bname);
		
		return mv;
		
	}
	
	
	@RequestMapping("test")
	public String test() {
		return "/testPage";
	}
	
}
