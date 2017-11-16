package controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.keyvalue.DefaultKeyValue;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import hall.model.HallDAO;
import hall.model.HallDTO;
import hallEstimate.model.HalleDAO;
import hallEstimate.model.HalleDTO;
import review.model.ReviewDAO;
import review.model.ReviewDTO;

@Controller
public class HallSearchController {

	@Autowired
	private HallDAO hallDao;
	@Autowired
	private HalleDAO halleDao;
	@Autowired
	private ReviewDAO review;

	
	@RequestMapping(value="/hallsearch.we")
	public ModelAndView view(){
		ModelAndView mav = new ModelAndView();
		List<HallDTO> hallview2 = halleDao.hallview();
		mav.addObject("hallview",hallview2);
		mav.setViewName("halllook/hallsearch");	
		return mav;
	}
	
	
	@RequestMapping(value="/hallsearch.we", method = RequestMethod.POST)
	public ModelAndView test(
			@RequestParam(value="hallType",defaultValue="noDATA")String hallType,
			@RequestParam("menuType")String menuType,
	         @RequestParam("mealCost")String mealCost,@RequestParam("guest")String guest,@RequestParam("lineType")String lineType,
	         @RequestParam("search_text")String search_text){
		if(hallType.equals("noDATA")){
			System.out.println("zzzzzzzzzzzzzzzzz");
		}
		ModelAndView mav = new ModelAndView();
		System.out.println();
		List<HallDTO>hallList = halleDao.hallList(hallType, menuType, mealCost, guest, lineType, search_text);
		mav.addObject("hallList",hallList);
		mav.addObject("aaa","aaa");
		mav.setViewName("jsonView");
		return mav;
	}
	

	
	/* ����Ȯ�� */
	@RequestMapping(value = "/hallestimate.we")
	public ModelAndView hallestlist() {
		ModelAndView est = new ModelAndView();
		List<HallDTO> hallview2 = halleDao.hallview();
		List<HalleDTO> hallest = halleDao.hallestList();
		est.addObject("hallestimate1", hallest);
		est.addObject("hallestimate2", hallview2);
		est.setViewName("halllook/hallestimate");
		return est;
	}
	
	/*������ ���� ����*/
	@RequestMapping(value="/hallmode.we")
	public ModelAndView hallesview(){
		ModelAndView mav = new ModelAndView();
		List<HalleDTO> hallest = halleDao.hallestList();
		mav.addObject("hallmode",hallest);
		mav.setViewName("halllook/hallmode");
		return mav;
	}
	
	/*��ŷ*/
	@RequestMapping(value="/hallranking.we")
	public ModelAndView hallrank(int cp,int ls){
		ModelAndView mav = new ModelAndView();
		List<ReviewDTO> hallrank = review.AllReviewList(cp, ls);
		mav.addObject("hallrank",hallrank);
		mav.setViewName("halllook/hallranking");
		return mav;
	}
	
	


}
