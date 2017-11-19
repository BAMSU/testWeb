package com.sns.login;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.github.scribejava.core.model.OAuth2AccessToken;


/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	


	final Logger logger = LoggerFactory.getLogger(this.getClass());
	/* NaverLoginBO */
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	
	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	//�α��� ù ȭ�� ��û �޼ҵ�
	@RequestMapping(value = "/memberLogin.we", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {
		
		/* ���̹����̵�� ���� URL�� �����ϱ� ���Ͽ� naverLoginBOŬ������ getAuthorizationUrl�޼ҵ� ȣ�� */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);
		
		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("���̹�:" + naverAuthUrl);
		
		//���̹� 
		model.addAttribute("url", naverAuthUrl);

		/* ������ ���� URL�� View�� ���� */
		return "member/memberLogin";
	}

	//���̹� �α��� ������ callbackȣ�� �޼ҵ�
	@RequestMapping(value = "/callback.we", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView  callback(ModelAndView model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {
		System.out.println("����� callback");
		OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        //�α��� ����� ������ �о�´�.
	    apiResult = naverLoginBO.getUserProfile(oauthToken);
		model = new ModelAndView();
		model.addObject("result", apiResult);

		
		model.setViewName("naverOk/naverSuccess");
	


        /* ���̹� �α��� ���� ������ View ȣ�� */
		return model;
		
	}


	

	
	
	
	@RequestMapping("naverLoginWriteOk.we")
	public ModelAndView naverLoginOkite(@RequestParam("name")String name,@RequestParam("id")String id,HttpSession session){
		
	
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", "�α��� ����");
		session.setAttribute("sname", name);
		session.setAttribute("sid", id);
		mav.addObject("gourl", "index.we");
		mav.setViewName("member/memberMsg"); 
	
		return mav;	
	}
	
	@RequestMapping("/Logout.we")
	public String Logout(HttpSession session){
				
		session.invalidate();
		return "index";
			
	}
	@RequestMapping("facebookLoginOk.we")
	public ModelAndView facebookLoginOk(@RequestParam("names")String name,@RequestParam("birthdays")String birthday,
										@RequestParam("ids")String id,HttpSession session){
		
		session.setAttribute("sname", name);
		session.setAttribute("sbirthday", birthday);
		session.setAttribute("sid", id);
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("index");
		return mav;	
		
		
	}
	
}


