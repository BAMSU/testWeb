package yong.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yong.bbs.model.BbsDAO;
import yong.bbs.model.BbsDTO;

@Controller
public class BbsController {
	
	@Autowired
	private BbsDAO dao;
	
	@RequestMapping("/bbsList.do")
	public ModelAndView bbsList(@RequestParam(value="cp", defaultValue="1")int cp){
		int totalCnt = dao.getTotalCnt();
		int listSize=5;
		int pageSize=5;
		String pageStr = yong.page.PageModule.makePage("bbsList.do", totalCnt, listSize, pageSize, cp);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bbs/bbsList");
		mav.addObject("list", dao.bbsAllList(cp, listSize));
		mav.addObject("pageStr", pageStr);
		return mav;
		
	}
	
	@RequestMapping(value="/bbsWrite.do", method=RequestMethod.GET)
	public String bbsWriteForm() {
		return "bbs/bbsWrite";
	}
	
	@RequestMapping(value="/bbsWrite.do", method=RequestMethod.POST)
	public ModelAndView bbsWriteSubmit(BbsDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", dao.bbsWrite(dto)>0?"글쓰기성공":"글쓰기실패");
		mav.setViewName("bbs/bbsMsg");
		return mav;
	}
	
	@RequestMapping("/bbsContent.do")
	public ModelAndView bbsContent(int idx) {
		BbsDTO dto = dao.bbsContent(idx);
		dto.setContent(dto.getContent().replaceAll("\r","<br>"));
		ModelAndView mav = new ModelAndView();
		mav.setViewName("bbs/bbsContent");
		mav.addObject("dto", dto);
		return mav;
		
	}

}
