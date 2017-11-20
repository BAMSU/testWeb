package controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import consult.model.ConsultDAO;
import consult.model.ConsultDTO;
import mypageAsk.model.MypageAskDAO;
import mypageLike.model.MypageLikeDAO;
import mypageReview.model.MypageReviewDAO;
import review.model.ReviewDAO;
import yong.card.model.PageModule;
import yong.cardOrder.model.CardOrderDAO;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class MypageController {

	@Autowired
	private MypageLikeDAO mypageLikeDao;

	@Autowired
	private ConsultDAO consultDao;

	@Autowired
	private ReviewDAO reviewDao;

	@Autowired
	private CardOrderDAO cardorderDao;
	
	@RequestMapping("/mypage.we")
	public ModelAndView myPage(HttpSession session, @RequestParam(value = "cp1", defaultValue = "1") int cp1,
			@RequestParam(value = "cp2", defaultValue = "1") int cp2,
			@RequestParam(value = "cp3", defaultValue = "1") int cp3) {
		ModelAndView mav = new ModelAndView();

		String name = (String) session.getAttribute("sname");

		mav.addObject("list1", mypageLikeDao.mypage_Like(name));
		System.out.println(name);
		mav.addObject("list3", reviewDao.ReviewList(cp3, 5, name));
		mav.addObject("list4", cardorderDao.cardoder(name));
		// String pageStr1 = PageModule.makePage("mypage.we", totalCnt, 5, 5,
		// cp1);
		String pageStr2 = PageModule.makePage("mypage.we", consultDao.getTotelCont(name), 5, 5, cp2);
		String pageStr3 = PageModule.makePage("mypage.we", reviewDao.getNameTotelCont(name), 5, 5, cp3);

		int totalCnt = consultDao.getTotelCont(name);
		int listSize = 10;
		int pageSize = 5;
		String pageStr = yong.page.PageModule.makePage("consultList.we", totalCnt, listSize, pageSize, cp2);

		List<ConsultDTO> list = consultDao.consultList(cp2, listSize, name);

		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("myPage/Mypage");
		System.out.println(name);
		return mav;
	}

	/*
	 * @RequestMapping("myPage_Like.we") public ModelAndView myPageLike(String
	 * name){
	 * 
	 * ModelAndView mav = new ModelAndView(); mav.addObject("list",
	 * mypageLikeDao.mypage_Like(name)); mav.setViewName("myPage/myPage_Like");
	 * return mav; }
	 */

}
