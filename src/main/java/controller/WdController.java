package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hall.model.HallDAO;
import hall.model.HallDTO;


@Controller
public class WdController {
	
	@Autowired
	private HallDAO dao;
	
	@RequestMapping("/insertWd.we")
	public String adminForm() {
		return "wd/insertWd";
	}
	
	@RequestMapping("/wdList.we")
	public ModelAndView wdList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.getHallList());
		mav.setViewName("wd/wdList");
		return mav;
	}
	
	@RequestMapping("/updateWd.we")
	public ModelAndView wdContent(String name) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.getHallListByName(name));
		HallDTO dto = dao.getHallListByName(name);
		mav.setViewName("wd/updateWd");
		return mav;
	}
	
	
	
	
	
}
