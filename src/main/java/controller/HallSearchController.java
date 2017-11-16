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
import room.model.RoomDTO;


@Controller
public class HallSearchController {

	@Autowired
	private HallDAO hallDao;
	@Autowired
	private HalleDAO halleDao;
	@Autowired
	private ReviewDAO ReviewDao;

	
	@RequestMapping(value="/hallsearch.do")
	public ModelAndView view(){
		ModelAndView mav = new ModelAndView();
		List<HallDTO> hallview2 = halleDao.hallview();
		mav.addObject("hallview",hallview2);
		mav.setViewName("hall/hallsearch");	
		return mav;
	}
	
	
	@RequestMapping(value="/hallsearch.do", method = RequestMethod.POST)
	public ModelAndView test(
			@RequestParam(value="hallType")String hallType,
			@RequestParam("menuType")String menuType,
	       @RequestParam("lineType")String lineType,
	         @RequestParam("search_text")String search_text,
	         @RequestParam("est_guest")int est_guest,
	         @RequestParam("meal_price")int meal_price,
	         @RequestParam("meal_price2")int meal_price2){
		ModelAndView mav = new ModelAndView();
		System.out.println(hallType);
		System.out.println(menuType);
		System.out.println(lineType);
		System.out.println(search_text);
		List<HallDTO>hallList = halleDao.hallList(hallType, menuType);
		List<HalleDTO>hallList2=halleDao.hallList2(est_guest,meal_price,meal_price);
		List<HallDTO>hallList3=halleDao.hallList3(lineType, search_text);
		System.out.println(menuType);
		mav.addObject("hallList",hallList);
		mav.setViewName("jsonView");
		return mav;
	}
	

	
	/* 견적확인 */
	@RequestMapping(value = "/hallestimate.do")
	public ModelAndView hallestlist(@RequestParam(value="hall_idx",defaultValue="1")int hall_idx) {
		ModelAndView est = new ModelAndView();
		HalleDTO dto = halleDao.halles(hall_idx);
		HallDTO dto2= halleDao.halle(hall_idx);
		est.addObject("hallestList",dto);
		est.addObject("hallview",dto2);
		est.setViewName("hall/hallestimate");
		return est;
	}
	
	/*견적서 모형 보기*/
	@RequestMapping(value="/hallmode.do")
	public ModelAndView hallesview(HalleDTO dto,@RequestParam(value="hall_idx")int hall_idx){
		dto = halleDao.halles(hall_idx);
		List<RoomDTO> dtorom = halleDao.hallroom(hall_idx);
		ModelAndView mas = new ModelAndView("hall/hallmode");
		mas.addObject("hallmod", dto);
		mas.addObject("dtorom", dtorom);
		return mas;
	}
	
	/*랭킹*/
	@RequestMapping(value="/hallranking.do")
	public ModelAndView hallrank(){
	
	ModelAndView mas = new ModelAndView("hall/hallranking");
	List<HallDTO> list = halleDao.rankingList();
	mas.addObject("hallrank", list);
	return mas;
	}
}
