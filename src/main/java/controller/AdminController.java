package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import consult.model.aConsultDAO;

@Controller
public class AdminController {
	
	@Autowired
	private aConsultDAO dao;
	
	@RequestMapping("/admin.we")
	public String adminForm() {
		return "admin/admin";
	}
	
	@RequestMapping("/acon.we")
	public ModelAndView conForm(String type) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list", dao.aCList(type));
		mav.setViewName("admin/fqList");
		
		return mav;
	}
	
	
	
	@RequestMapping("/fqContent.we")
	public ModelAndView conCon(int idx) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list", dao.aCcon(idx));
		mav.setViewName("admin/fqContent");
		
		return mav;
	}
	
	@RequestMapping("/fqContenta.we")
	public ModelAndView conCon2(int idx) {
		
		ModelAndView mav = new ModelAndView();
		
		
		int result = dao.updateCon(idx);
		
		if(result>0) {
			mav.addObject("msg", "처리되었습니다!");
			
		} else {
			mav.addObject("msg", "처리 불가!");
			
		}
		mav.addObject("gourl", "acon.we?type=0");
		mav.setViewName("admin/fqMsg");
		
		return mav;
	}
	
	

}
