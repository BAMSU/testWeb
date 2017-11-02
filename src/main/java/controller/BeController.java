package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import be.model.BeDAO;
import be.model.BeDTO;

@Controller
public class BeController {
	
	@Autowired
	private BeDAO beDao;
	
	@RequestMapping(value="/beHeader.we",method=RequestMethod.GET)
	public String beHeader() {
		return "be/beHeader";
	}
	
	@RequestMapping(value="/beLogin.we",method=RequestMethod.GET)
	public String beLoginForm() {
		return "be/beLogin";
	}
	
	@RequestMapping(value="/logout.we")
	public ModelAndView beLogout(HttpServletRequest req, HttpServletResponse resp){
		
		HttpSession session = req.getSession();
		session.invalidate();
		
		ModelAndView mav = new ModelAndView();
		String msg = "로그아웃되었습니다.";
		mav.addObject("msg",msg);
		mav.setViewName("be/beLogin");
		
		return mav;
	}
	@RequestMapping(value="/beLogin.we",method=RequestMethod.POST)
	public ModelAndView beLoginSubmit(BeDTO dto, HttpServletRequest req, HttpServletResponse resp){
		
		ModelAndView mav = new ModelAndView();
		
		int result = beDao.BeLogin(dto);
		String msg="";
		String href="";
		
		if(result==0) { //아이디 또는 비밀번호가 맞지않음
			
			msg = "아이디 또는 비밀번호가 틀렸습니다.";
			href= "beLogin.we";
			
		}else if(result==1){	//아이디 비밀번호 모두 맞음
			
			BeDTO dto2 = beDao.loginInfo(dto.getBe_id());
			
			HttpSession session = req.getSession();
			session.setAttribute("besid", dto.getBe_id());
			session.setAttribute("besname", dto2.getBe_name());
			session.setAttribute("besort", dto2.getBe_sort());
			System.out.println(dto2.getBe_sort()+"123");
			msg = dto2.getBe_name()+"업체 로그인 되었습니다.";
			href = "beIndex.we";
			
		}
		
		mav.addObject("msg", msg);
		mav.addObject("href",href);
		mav.setViewName("be/beMsg");
		
		
		return mav;
	}
	
	@RequestMapping(value="/beJoin.we",method=RequestMethod.GET)
	public String  beJoinForm() {
		return "be/beJoin";
	}
	@RequestMapping(value="/beJoin.we",method=RequestMethod.POST)
	public ModelAndView beJoinSubmit(BeDTO dto){
		
		ModelAndView mav = new ModelAndView();
		
		int result = beDao.BeJoin(dto);
		String name = dto.getBe_name();
		String msg = result>0?
				name+"업체 등록 신청 완료! 관리자의 승인을 기다려주세요."
				:"업체등록 신청 실패! 다시 시도해주세요.";
		String href= result>0?"beLogin.we":"beJoin.we";
		
		System.out.println(msg);
		
		mav.addObject("msg", msg);
		mav.addObject("href",href);
		mav.setViewName("be/beMsg");
		
		return mav;
	}
	
	@RequestMapping(value="/beIndex.we")
	public String  beIndex() {
		return "be/beIndex";
	}
	@RequestMapping(value="/beReg.we",method=RequestMethod.GET)
	public String regItemForm() {
		return "be/regItem";
	}

	@RequestMapping(value="/regSDMY.we")
	public String regSDMY() {
		return "be/register/regSDMY";
	}
}








