package controller;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.model.MemberDAO;
import member.model.MemberDTO;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

	@Autowired
	private MemberDAO memberDao;
	private MemberDTO memberDto;
	
	@RequestMapping("memberLogin.we")
	public String loginForm(){
		
		return "member/memberLogin";
	}

	
	@RequestMapping("memberidFind.we")
	public String idFind(){
		return "member/memberidFind";
	}
	
	
	@RequestMapping("memberpwdFind.we")
	public String pwdFind(){
		return "member/memberpwdFind";
	}
	
	
	@RequestMapping("loginForm.we")
	public ModelAndView member_login(String id, String pwd,HttpServletRequest req,String saveid,
			HttpServletResponse resp)
			{
		HttpSession session = req.getSession();
		
		ModelAndView mav = new ModelAndView();
		
		
		int a = memberDao.Member_Login(id, pwd);
		if(a>0) {
			
			if(saveid==null){
				Cookie ck = new Cookie("saveid", id);
				
				ck.setMaxAge(0	);
				resp.addCookie(ck);
			}else{
				Cookie ck = new Cookie("saveid", id);
				ck.setMaxAge(60*60*24);
				resp.addCookie(ck);
				
			}
			
			
			mav.addObject("msg", "로그인성공");
			
			mav.addObject("gourl", "index.we");
			
			session.setAttribute("sid", id);
			System.out.println(saveid);
			
			
		} else {
			
			
			mav.addObject("msg", "로그인실패");
			mav.addObject("gourl", "memberLogin.we");
		}
		
		
		mav.setViewName("member/memberMsg"); 
		return mav;
	}
	
	
	@RequestMapping("idCheck.we")
	public ModelAndView member_IdCheck(@RequestParam("userid")String userid){
		System.out.println(userid);
		
		return null;
	}
	
	@RequestMapping("memberLogout.we")
	public ModelAndView member_logout(HttpServletRequest req){
		
		HttpSession session = req.getSession();
		session.invalidate();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg" , "로그아웃되었습니다.");
		
		
		mav.setViewName("index");
		
		return mav;
	}
	
	@RequestMapping(value="/memberJoin.we", method=RequestMethod.GET)
	public String joinForm(){
		return "member/memberJoin";
	}
	@RequestMapping(value="/memberJoin.we", method=RequestMethod.POST)
	public ModelAndView joinSubmit(MemberDTO dto){
		
		ModelAndView mav = new ModelAndView();
		System.out.println(dto.getMember_id());
		int result = memberDao.MemberJoin(dto);
		String msg = result>0?"회원가입 축하 ":"회원가입 실패";
	
		mav.addObject("msg" , msg);
		
		mav.setViewName("index");
		
		
		return mav;
	}

}
