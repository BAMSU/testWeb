package controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mypageAsk.model.MypageAskDAO;
import mypageLike.model.MypageLikeDAO;
import mypageReview.model.MypageReviewDAO;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class MypageController {

	
	@Autowired
	private MypageReviewDAO mypageReviewDao;
	
	@Autowired
	private MypageLikeDAO mypageLikeDao;
	
	@Autowired
	private MypageAskDAO mypageAskDao;
	
	
	@RequestMapping("mypage.we")
	public String myPage(){
		
		return "myPage/Mypage";
	}
	
	
	@RequestMapping("myPage_Like.we")
	public ModelAndView myPageLike(String name){
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", mypageLikeDao.mypage_Like(name));
		mav.setViewName("myPage/myPage_Like");
		return mav;
	}
	
	
}
