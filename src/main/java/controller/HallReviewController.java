package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import consult.model.ConsultDTO;
import hall.model.HallDAO;
import hall.model.HallDTO;



import review.model.*;

import org.springframework.web.bind.annotation.RequestParam;


import org.springframework.web.multipart.MultipartFile;



@Controller
public class HallReviewController {
	
	@Autowired
	private ReviewDAO reviewDao;
	@Autowired
	private HallDAO hallDao;
	
	@RequestMapping(value="hallReviewWrite.we",method=RequestMethod.GET)
	public ModelAndView  hallReviewForm(@RequestParam(value="gubun",defaultValue="1")int hall_idx){

		
		ModelAndView mav = new ModelAndView("review/hallReviewWrite");
		mav.addObject("hallInfo",hallDao.getHallInfo(hall_idx));
		mav.addObject("hall_idx", hall_idx);
		mav.setViewName("review/hallReviewWrite");
		return mav;
	}
	
	
	@RequestMapping(value="hallReviewWrite.we", method=RequestMethod.POST)
	public ModelAndView hallReviewWrite(ReviewDTO dto){
		
		
		
		int result = reviewDao.reviewWrite(dto);
		
		String msg = result>0?"리뷰 등록 완료 되었습니다.":"리뷰 등록 실패 되었습니다.";
		ModelAndView mav = new ModelAndView();
	
		mav.addObject("msg", msg);
		mav.setViewName("review/reviewMsg");
		
		return mav;
	
	}
	
	
	@RequestMapping("/AllhallList.we")
	public ModelAndView AllhallList(@RequestParam(value="cp",defaultValue="1")int cp){
	
		int totalCnt = reviewDao.getTotelCont();
		int listSize = 5;
		int pageSize = 2;
		String pageStr = yong.page.PageModule.makePage("AllhallList.we", totalCnt, listSize, pageSize, cp);
		
		
		List<ReviewDTO> list=reviewDao.AllReviewList(cp,listSize);
		
		
		ModelAndView mav = new ModelAndView();
	
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("review/ReviewList");
		return mav;
	}
	
	
	@RequestMapping("/hallList.we")
	public ModelAndView ReviewList(@RequestParam(value="cp",defaultValue="1")int cp,HttpSession session){
		
		
		String name =(String)session.getAttribute("sname");
		System.out.println(name);
		int totalCnt = reviewDao.getTotelCont();
		int listSize = 10;
		int pageSize = 5;
		String pageStr = yong.page.PageModule.makePage("hallList.we", totalCnt, listSize, pageSize, cp);
		
		List<ReviewDTO> list=reviewDao.ReviewList(cp,listSize,name);
		ModelAndView mav = new ModelAndView();
		mav.addObject("lists", list);
		mav.addObject("pageStrs", pageStr);
		mav.setViewName("review/nameReviewList");
		return mav;
	}
	
	@RequestMapping("/reviewDel.we")
	public ModelAndView ReviewDel(@RequestParam("idx")int idx){
		
		int result = reviewDao.ReviewDel(idx);
		String msg = result>0?"삭제 완료 되었습니다.":"삭제 실패 하였습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("review/reviewMsg");
		
		return mav;
		
	}
	

	
	
	
	
}
