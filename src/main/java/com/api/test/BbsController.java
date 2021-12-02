package com.api.test;

import java.io.File;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

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
			bname = "일반게시판"; // 일반게시물

		
		
		rowTotal = b_dao.getTotalCount(bname);
		BbsPaging page = new BbsPaging(nowPage, rowTotal, block_list, block_page);
		
		int begin = page.getBegin();
		int end = page.getEnd();
		
		pageCode = page.getSb().toString();
		
		BbsVO[] ar = b_dao.getList(begin, end, bname);
		
		mv.addObject("ar", ar);
		mv.addObject("nowPage", nowPage);
		mv.addObject("rowTotal", rowTotal);
		mv.addObject("blockList", block_list);
		mv.addObject("pageCode", pageCode);
		mv.setViewName("/helpSc");
		return mv;
	}
	//게시물상세보기
	@RequestMapping("/helpScV")
	public String goView(String b_idx) {
		System.out.println(b_idx);
		return "helpScV";
	}
	//글쓰기 페이지로 이동
	@RequestMapping("/helpWrite")
	public String goWrite(String bname) {
		System.out.println(bname);
		return "/write";
	}

	@RequestMapping(value="/saveImg", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> saveImg(ImgVO vo){
		//반환객체 생성
		Map<String, String> map = new HashMap<String, String>();
		
		//넘어온 이미지 파일이 있는지 확인
		MultipartFile f = vo.getS_file();
		String fname = null; // 반환할 때 필요함!
		
		if(f.getSize() > 0) {
			//이미지 파일이 있는 경우
			String realPath = application.getRealPath(img_path);
			
			fname = f.getOriginalFilename(); //f.getName();// s_file
			
			//첨부파일이 앞서 저장된 파일명과 동일할 경우 파일명 뒤에 숫자를
			//붙여서 같은 이름을 피한다.
			fname = FileRenameUtil.checkSameFileName(fname, realPath);
			
			try {
				f.transferTo(new File(realPath, fname));//지정된 위치(realPath)에
														//파일 올린다.
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//파일이 업로드가 되었으므로 이제 정확한 경로를 반환해야 한다.(JSON)
		String c_path = request.getContextPath();
		
		map.put("url", c_path+img_path);
		map.put("fname", fname);// flag.png
		
		return map;
	}
	@RequestMapping(value="/write.inc", method=RequestMethod.POST)
	public ModelAndView write(BbsVO vo)throws Exception{
		
		System.out.println(vo.getWriter());
		
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
			
		vo.setIp(request.getRemoteAddr());//접속자 IP저장
		
		b_dao.add(vo);// DB에 저장!!!!
		
		//반환을 위한 객체 생성
		ModelAndView mv = new ModelAndView();
		mv.setViewName("redirect:/helpSc");
		
		return mv;
	}
	
	
	@RequestMapping("/ans_write.inc")
	public ModelAndView ans_write(CommVO cvo, String cPage) {
		ModelAndView mv = new ModelAndView();
		
		//댓글정보가 모두 cvo에 저장되어 넘어왔다.
		b_dao.addAns(cvo); //댓글 저장
		
		mv.setViewName("redirect:/view.inc?b_idx="+cvo.getB_idx()+"&cPage="+cPage);
		
		return mv;
		
	}
	
	
	@RequestMapping("test")
	public String test() {
		return "/testPage";
	}
	
}
