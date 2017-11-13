package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sun.xml.internal.ws.config.management.policy.ManagementPolicyValidator;

import ahall.model.aHallDAO;
import ahall.model.aHallDTO;


@Controller
public class WdController {
	
	@Autowired
	private aHallDAO dao;
	
	@RequestMapping("/insertWd.we")
	public String adminForm() {
		return "wd/insertWd";
	}
	
	@RequestMapping("/insertWd2.we")
	public ModelAndView adminAction(aHallDTO dto) {
		ModelAndView mav = new ModelAndView();
		int result = dao.insertWd(dto);
		
		if(result>0) {
			mav.addObject("msg", "��� ����!");
			mav.addObject("gourl", "wdList.we");
			
		} else {
			mav.addObject("msg", "��� ����!");
			mav.addObject("gourl", "wdList.we");
		}
		mav.setViewName("wd/wdMsg");
		return mav;
	}
	
	@RequestMapping("/wdList.we")
	public ModelAndView wdList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.getHallList());
		mav.setViewName("wd/wdList");
		return mav;
	}
	
	@RequestMapping("/updateWd.we")
	public ModelAndView wdContent(int idx) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.getHallInfo(idx));
		mav.setViewName("wd/updateWd");
		return mav;
	}
	
	@RequestMapping("/update2.we")
	public ModelAndView updateWd(aHallDTO dto) {
		
		ModelAndView mav = new ModelAndView();
		int result = dao.updateWd(dto);
		
		if(result>0) {
			mav.addObject("msg", "���� ����!");
			mav.addObject("gourl", "wdList.we");
			
		} else {
			mav.addObject("msg", "���� ����!");
			mav.addObject("gourl", "wdList.we");
		}
		mav.setViewName("wd/wdMsg");
		return mav;
	}
	
	@RequestMapping("/deleteWd.we")
	public ModelAndView deleteWd(int idx) {
		ModelAndView mav = new ModelAndView();
		int result = dao.deleteWd(idx);
		
		if(result>0) {
			mav.addObject("msg", "���� ����!");
			mav.addObject("gourl", "wdList.we");
			
		} else {
			mav.addObject("msg", "���� ����!");
			mav.addObject("gourl", "wdList.we");
		}
		mav.setViewName("wd/wdMsg");
		return mav;
	}
	
	
	
	
	
}