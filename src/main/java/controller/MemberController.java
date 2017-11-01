package controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yong.member.model.MemberDAO;
import yong.member.model.MemberDTO;

@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO memberDao;
	
	@RequestMapping("/memberList.do")
	public String memberList() {
		return "member/memberList";
	}
	
	@RequestMapping("/memberListView.do")
	public ModelAndView memberListView() {
		List<MemberDTO> list = memberDao.memberList();
		ModelAndView mav = new ModelAndView("yongjson", "member", list);
		return mav;
	}

	@RequestMapping(value="/join.do",method=RequestMethod.GET)
	public ModelAndView memberForm() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/join");
		return mav;
		
	}
	
	@RequestMapping(value="/join.do",method=RequestMethod.POST)
	public ModelAndView memberJoin(MemberDTO dto){
		int result = memberDao.memberJoin(dto);
		ModelAndView mav = new ModelAndView();
		if(result>0) {
			mav.addObject("msg", "���� ����!");
		} else {
			mav.addObject("msg", "���� ����!");
			
		}
		mav.addObject("gourl", "/myweb3/");
		mav.setViewName("member/memberMsg");
		return mav;
		
	}
	
	@RequestMapping("/memberIdCheck.do")
	public ModelAndView memberIdCheck(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/idCheck");
		return mav;
		
	}
	
	@RequestMapping("/IdCheck_Ok.do")
	public ModelAndView memberIdCheck2(MemberDTO dto){
		boolean a = memberDao.idCheck(dto.getId());
		ModelAndView mav = new ModelAndView();
		if(a) {
			mav.addObject("msg", "�̹� �ִ� ���̵��Դϴ�.");
			mav.addObject("gourl", "/myweb3/memberIdCheck.do");
			mav.setViewName("member/memberMsg");
		} else {
			mav.addObject("msg", "���� �����մϴ�.");
			mav.addObject("userid", dto.getId());
			mav.setViewName("member/idCheck_ok");
		}
		return mav;
		
	}
	
	@RequestMapping("/ajaxIdCheck.do")
	public ModelAndView memberIdCheck(String id){
		boolean a = memberDao.idCheck(id);
		ModelAndView mav = new ModelAndView();
		if(a) {
			mav.addObject("msg", "�̹� �ִ� ���̵��Դϴ�.");
		} else {
			mav.addObject("msg", "���� �����մϴ�.");
		}
		mav.setViewName("member/ajaxidCheck");
		return mav;
		
	}
	
	
	
	
	@RequestMapping(value="/login.we",method=RequestMethod.GET)
	public ModelAndView loginform() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/login");
		return mav;
		
	}
	
	@RequestMapping(value="/login.do",method=RequestMethod.POST)
	public ModelAndView login(MemberDTO dto, HttpServletRequest req, HttpServletResponse resp, @RequestParam(value="id", required=false)String userid, @RequestParam(value="saveid", required=false)String saveid){
		
		ModelAndView mav = new ModelAndView();
		
		int result = memberDao.login(dto.getId(), dto.getPwd());
		
		if(result==3) {
			if (saveid != null) {
	            Cookie ck = new Cookie("saveid", userid);
	            ck.setMaxAge(60 * 60 * 24 * 30);
	            resp.addCookie(ck);
	         } else {
	            Cookie ck = new Cookie("saveid", userid);
	            ck.setMaxAge(0);
	            resp.addCookie(ck);
	         }
			
			
			mav.addObject("msg", memberDao.getUserInfo(dto.getId()) + "�� ȯ���մϴ�.");
			mav.addObject("gourl", "index.do");
			mav.setViewName("member/login_ok");
			HttpSession session = req.getSession();
			session.setAttribute("name", memberDao.getUserInfo(dto.getId()));
		} else {
			mav.addObject("msg", "�α��� ����!");
			mav.addObject("gourl", "login.do");
			mav.setViewName("member/memberMsg");
		}
		
		
		return mav;
		
	}
	
	
	
	
	@RequestMapping(value="/logout.do")
	public ModelAndView logout(HttpServletRequest req) {
		
		HttpSession session = req.getSession();
		session.invalidate();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("msg", "�α׾ƿ� �Ǿ����ϴ�.");
		mav.addObject("gourl", "index.do");
		
		
		
		mav.setViewName("member/memberMsg");
		return mav;
		
	}
	
	
	
}