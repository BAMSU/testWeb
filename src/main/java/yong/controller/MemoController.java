package yong.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import yong.memo.model.MemoDAO;
import yong.memo.model.MemoDTO;

@Controller
@RequestMapping("/memoWrite.do")
public class MemoController {
	
	@Autowired
	private MemoDAO memoDao;

	@RequestMapping(value="/memoWrite.do",method=RequestMethod.GET)
	public ModelAndView memoForm() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("memo/memoForm");
		return mav;
		
	}
	
	@RequestMapping(value="/memoWrite.do",method=RequestMethod.POST)
	public ModelAndView memoWrite(@ModelAttribute("cmd")MemoDTO command){
	
		System.out.println(command.toString());
		memoDao.memoWrite(command);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("memo/memoOk");
		return mav;
		
	}
	
}
