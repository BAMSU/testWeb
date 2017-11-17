package controller;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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

	
	@RequestMapping("memberidFind.we")
	public String idFind(){
		return "member/memberidFind";
	}
	
	
	@ResponseBody
	@RequestMapping(value="/idcheck.we",method=RequestMethod.POST)
	public String idCheck(@RequestParam("id")String member_id){
		int idcheck = memberDao.Member_idCheck(member_id);
		
		return String.valueOf(idcheck);
		
	}
	@RequestMapping("idFindSubmit.we")
	public ModelAndView IdFind(String member_name,String member_email,MemberDTO dto){
		
		
		String result=memberDao.MemberidFind(dto);
		
		ModelAndView mav = new ModelAndView();
		
		if(result==null){
			
			mav.addObject("msg","이름또는 이메일이 틀립니다.");
			mav.setViewName("member/memberidFind");
		}else{
			mav.addObject("result",result);
			mav.setViewName("member/memberidFind_ok");
		}
		
		
		return mav;
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
				
				ck.setMaxAge(0);
				resp.addCookie(ck);
			}else{
				Cookie ck = new Cookie("saveid", id);
				ck.setMaxAge(60*60*24);
				resp.addCookie(ck);
				
			}
			
			
			mav.addObject("msg", "로그인 성공");
			
			mav.addObject("gourl", "index.we");
			
			session.setAttribute("sname", memberDao.getName(id));
			
			
			
		} else {
			
			
			mav.addObject("msg", "로그인실패");
			mav.addObject("gourl", "memberLogin.we");
		}
		
		
		mav.setViewName("member/memberMsg"); 
		return mav;
	}
	
	
	
	@RequestMapping("memberLogout.we")
	public ModelAndView member_logout(HttpServletRequest req){
		
		HttpSession session = req.getSession();
		session.invalidate();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg" , "로그아웃 되었습니다.");
		mav.addObject("gourl","index.we");
		
		mav.setViewName("member/memberlogoutMsg");
		
		return mav;
	}
	
	@RequestMapping(value="/memberJoin.we", method=RequestMethod.GET)
	public String joinForm(){
		return "member/memberJoin";
	}
	@RequestMapping(value="/memberJoin.we", method=RequestMethod.POST)
	public ModelAndView joinSubmit(MemberDTO dto){
		
		ModelAndView mav = new ModelAndView();
		
		int result = memberDao.MemberJoin(dto);
		
		String msg = result>0?"회원가입성공 ":"회원가입 실패";
	
		mav.addObject("msg" , msg);
		
		mav.setViewName("member/memberlogoutMsg");
		
		
		return mav;
	}

}
