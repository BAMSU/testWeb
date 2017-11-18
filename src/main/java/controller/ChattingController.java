package controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ChattingController {
	
	@RequestMapping("/chatting.we")
	public ModelAndView catting(HttpSession session){
		
		String sn =(String) session.getAttribute("sname");
		System.out.println(sn);
		ModelAndView mav = new ModelAndView("chatting/chattingMain");
		mav.addObject("snames", sn);
	
		return mav;
	}

}
