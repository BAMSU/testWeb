package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



import hall.model.*;




import review.model.*;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;





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
		
		 
		int review_sum = dto.getAvg1()+dto.getAvg2()+dto.getAvg3()+dto.getAvg4()+dto.getAvg5();
		
	
		int result = reviewDao.reviewWrite(dto);
	//	double result2 = reviewDao.getReviewAge(dto.getName());
	//	System.out.println(result2);
	     int result2 = reviewDao.review_accrue_Update(review_sum, dto.getName());
		
		
		
		String msg = result>0&&result2>0?"리뷰 등록 및 랭킹정보 수정  완료 되었습니다.":"리뷰 등록 및 랭킹정보 수정  실패 되었습니다.";
		ModelAndView mav = new ModelAndView();
	
		mav.addObject("msg", msg);
		mav.setViewName("review/reviewMsg");
		
		return mav;
	
	}
	
	
	@RequestMapping("/AllhallList.we")
	public ModelAndView AllhallList(@RequestParam(value="cp",defaultValue="1")int cp,
			@RequestParam(value="name",defaultValue="0")String name){
		int totalCnt = reviewDao.getTotelContByHall(name);
		int listSize = 5;
		int pageSize = 5;
		String pageStr = PageModule.makePage("AllhallList.we", totalCnt, listSize, pageSize, cp);
		
		List<ReviewDTO> list=reviewDao.hallReviewList(cp, listSize, name);
		
		if(name.equals("0")){
			totalCnt = reviewDao.getTotelCont();
			list=reviewDao.AllReviewList(cp,listSize);
		}
		
		ModelAndView mav = new ModelAndView();
	
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("review/ReviewList");
		return mav;
	}
	
	
	@RequestMapping("/hallList.we")
	public ModelAndView ReviewList(@RequestParam(value="cp",defaultValue="1")int cp,HttpSession session){
		
		String name =(String)session.getAttribute("sname");
		
		int totalCnt = reviewDao.getNameTotelCont(name);
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
	public ModelAndView ReviewDel(ReviewDTO dto,@RequestParam("idx")int idx){
		
		int result = reviewDao.ReviewDel(idx);
		int result2 = reviewDao.review_accrue_Update2(dto, dto.getName());
		String msg = result>0&&result2>0?"삭제 완료 되었습니다.":"삭제 실패 하였습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("review/reviewMsg");
		
		return mav;
		
	}
	
	@RequestMapping("reviewContent.we")
	public ModelAndView reviewContent(@RequestParam("idx")int idx,@RequestParam("idx2")int review_idx){
		
		HallDTO dto2 = hallDao.getHallInfo(idx);
		ReviewDTO dto = reviewDao.reviewContent(review_idx);
		
		dto.setContent(dto.getContent().replaceAll("\r", "<br>"));
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		mav.addObject("hallInfo", dto2);
		
		mav.setViewName("review/reviewContent");
		return mav;
	}
	

	
	
	
	
}
