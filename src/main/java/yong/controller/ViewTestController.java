package yong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ViewTestController {

	
	@RequestMapping("/viewTest.do")
	public ModelAndView viewTest1(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("view/viewOk");
		return mav;
	}
	
	@RequestMapping("/viewTest2.do")
	public String viewTest2(){
		return "view/viewOk";
	}
	
	@RequestMapping("/view/viewOk.do")
	public void viewTest3(){
	}
	
	@RequestMapping("/viewTest4.do")
	public String viewTest4(){
		return "redirect:/hello.do";
	}
}
