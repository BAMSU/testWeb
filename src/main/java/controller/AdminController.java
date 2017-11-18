package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ahall.model.PageModule;
import ahall.model.PageModule2;
import ahall.model.aBeDAO;
import consult.model.aConsultDAO;

@Controller
public class AdminController {
	
	@Autowired
	private aConsultDAO dao;
	
	@Autowired
	private aBeDAO dao2;
	
	
	@RequestMapping("/admin.we")
	public String adminForm() {
		return "admin/admin";
	}
	
	@RequestMapping("/adminLogin.we")
	public String admin2Form() {
		return "admin/Login";
	}
	
	@RequestMapping("/adminLogin2.we")
	public ModelAndView admin2Form2(HttpServletRequest req, String id) {
		
		ModelAndView mav = new ModelAndView();
		
		if(id.equals("nokcha90")) {
			
			
			HttpSession session = req.getSession();
			session.setAttribute("admin", id);
			
			mav.addObject("msg", "관리자님 환영합니다~");
			mav.addObject("gourl", "admin.we");
		} else {
			mav.addObject("msg", "관리자 페이지 접근 불가");
			mav.addObject("gourl", "index.we");
		}
		mav.setViewName("admin/fqMsg2");
		return mav;
	}
	
	@RequestMapping("/acon.we")
	public ModelAndView conForm(@RequestParam(value="cp",defaultValue="1")int cp, String type) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("type", type);
		mav.addObject("list", dao.aCList(type));
		
		mav.addObject("list", dao2.FqaList(cp, 5, type));
		
		if(type.equals("0")) {
		mav.addObject("pageStr",PageModule2.makePage("acon.we", dao2.getTotalFq(), 5, 5, cp, type));
		} else if(type.equals("1")){
			mav.addObject("pageStr",PageModule2.makePage("acon.we", dao2.getTotalFq1(), 5, 5, cp, type));
		} else {
			mav.addObject("pageStr",PageModule2.makePage("acon.we", dao2.getTotalFq2(), 5, 5, cp, type));
		}
		
		
		mav.setViewName("admin/fqList");
		
		return mav;
	}
	
	@RequestMapping("/abelist.we")
	public ModelAndView beForm(@RequestParam(value="cp",defaultValue="1")int cp, String type) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("type", type);
		mav.addObject("list", dao2.BeaList(cp, 5, type));
		
		if(type.equals("1")) {
			mav.addObject("pageStr",PageModule2.makePage("abelist.we", dao2.getTotalBe1(), 5, 5, cp, type));
		} else if(type.equals("2")) {
			mav.addObject("pageStr",PageModule2.makePage("abelist.we", dao2.getTotalBe2(), 5, 5, cp, type));
		} else {
			mav.addObject("pageStr",PageModule2.makePage("abelist.we", dao2.getTotalBe(), 5, 5, cp, type));
		}
		
		
		
		
		mav.setViewName("admin/be_list");
		
		return mav;
	}
	
	@RequestMapping("/power.we")
	public ModelAndView power(int be_idx, String admin_permission) {
		
		ModelAndView mav = new ModelAndView();
		int result = 0;
		if(admin_permission.equals("n")) {
			result = dao2.bebe1(be_idx);
		} else {
			result = dao2.bebe2(be_idx);
		}
		if(result>0) {
			mav.addObject("msg", "처리되었습니다!");
			
		} else {
			mav.addObject("msg", "처리 불가!");
			
		}
		mav.addObject("gourl", "abelist.we?type=0");
		mav.setViewName("admin/fqMsg");
		
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
