package controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sun.xml.internal.ws.config.management.policy.ManagementPolicyValidator;

import ahall.model.PageModule;
import ahall.model.aHallDAO;
import ahall.model.aHallDTO;


@Controller
public class WdController {
	
	
	private String fileroot = "E:/jspstudy/myweb5/src/main/webapp/img/hall/";
	
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
	public ModelAndView wdList(@RequestParam(value="cp",defaultValue="1")int cp) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.hallaList(cp, 5));
		mav.addObject("pageStr",PageModule.makePage("wdList.we", dao.getTotelContByHall2(), 5, 5, cp));
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
	
	@RequestMapping("/image.we")
	public ModelAndView image(int idx) {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("hallImage/addImage");
		return mav;
	}

	
	
}