package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	
	@RequestMapping(value="/beLogin.we",method=RequestMethod.GET)
	public String beLoginForm() {
		return "be/beLogin";
	}
	
	@RequestMapping(value="/beLogin.we",method=RequestMethod.POST)
	public ModelAndView beLoginSubmit(BeDTO dto, HttpServletRequest req, HttpServletResponse resp){
		
		ModelAndView mav = new ModelAndView();
		
		int result = beDao.BeLogin(dto);
		String msg="";
		String href="";
		
		if(result==0) { //���̵� �Ǵ� ��й�ȣ�� ��������
			
			msg = "���̵� �Ǵ� ��й�ȣ�� Ʋ�Ƚ��ϴ�.";
			href= "beLogin.we";
			
		}else if(result==1){	//���̵� ��й�ȣ ��� ����
			
			BeDTO dto2 = beDao.loginInfo(dto.getBe_id());
			
			req.setAttribute("besid", dto.getBe_id());
			req.setAttribute("besname", dto2.getBe_name());
			
			msg = dto2.getBe_name()+"��ü �α��� �Ǿ����ϴ�.";
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
				name+"��ü ��� ��û �Ϸ�! �������� ������ ��ٷ��ּ���."
				:"��ü��� ��û ����! �ٽ� �õ����ּ���.";
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
	
}








