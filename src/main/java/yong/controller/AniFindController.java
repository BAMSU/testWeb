package yong.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AniFindController {
	
	@ModelAttribute("keyword")
	public String[] getKeyword() {
		String keyword[]={"겨울왕국", "미녀와야수", "개구쟁이스머프", "슈퍼배드", "케로로"};
		return keyword;
	}
	
	@ModelAttribute("cate")
	public String[] getCate() {
		String cate[]={"한국", "미국", "일본"};
		return cate;
	}
	
	@RequestMapping("/aniFind1.do")
	public ModelAndView aniFind1(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("ani/a");
		return mav;
	}
	
	@RequestMapping("/aniFind2.do")
	public String aniFind2(ModelMap model){
		return "ani/b";
	}


}
