package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
			
			mav.addObject("msg", "�����ڴ� ȯ���մϴ�~");
			mav.addObject("gourl", "admin.we");
		} else {
			mav.addObject("msg", "������ ������ ���� �Ұ�");
			mav.addObject("gourl", "index.we");
		}
		mav.setViewName("admin/fqMsg2");
		return mav;
	}
	
	@RequestMapping("/acon.we")
	public ModelAndView conForm(String type) {
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("type", type);
		mav.addObject("list", dao.aCList(type));
		mav.setViewName("admin/fqList");
		
		return mav;
	}
	
	@RequestMapping("/abelist.we")
	public ModelAndView beForm(String type) {
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("type", type);
		mav.addObject("list", dao2.beJoin(type));
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
			mav.addObject("msg", "ó���Ǿ����ϴ�!");
			
		} else {
			mav.addObject("msg", "ó�� �Ұ�!");
			
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
			mav.addObject("msg", "ó���Ǿ����ϴ�!");
			
		} else {
			mav.addObject("msg", "ó�� �Ұ�!");
			
		}
		mav.addObject("gourl", "acon.we?type=0");
		mav.setViewName("admin/fqMsg");
		
		return mav;
	}
	
	

}
