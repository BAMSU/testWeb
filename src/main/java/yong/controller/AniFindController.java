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
		String keyword[]={"�ܿ�ձ�", "�̳�;߼�", "�������̽�����", "���۹��", "�ɷη�"};
		return keyword;
	}
	
	@ModelAttribute("cate")
	public String[] getCate() {
		String cate[]={"�ѱ�", "�̱�", "�Ϻ�"};
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
