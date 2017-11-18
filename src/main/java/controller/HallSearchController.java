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
	private ReviewDAO review;

	
	@RequestMapping(value="/hallsearch.we")
	public ModelAndView view(@RequestParam(value="lineType",defaultValue="1호선")String lineType){
		ModelAndView mav = new ModelAndView();
		List<HallDTO> hallview2 = halleDao.hallview();
		List<String> station = halleDao.hallstation(lineType);
		mav.addObject("hallline",lineType);
		mav.addObject("hallstation",station);
		mav.addObject("hallview",hallview2);
		mav.setViewName("halllook/hallsearch");	
		return mav;
	}
	
	
	@RequestMapping(value="/hallsearch.we", method = RequestMethod.POST)
	public ModelAndView test(
			@RequestParam(value="hallType")String hallType,
			@RequestParam("menuType")String menuType,
	         @RequestParam("guest")int est_guest,
	         @RequestParam("mealCost")int meal_price){
		ModelAndView mav = new ModelAndView();
		System.out.println(hallType);
		System.out.println(menuType);
		System.out.println(est_guest);
		System.out.println(meal_price);
		Map map = new HashMap();
		map.put("hallType", hallType);
		map.put("menuType", menuType);
		map.put("est_guest", est_guest);
		map.put("meal_price", meal_price);
		
		List<HallDTO>hallList = halleDao.hallList(map);
		mav.addObject("hallview",hallList);
		mav.setViewName("halllook/hallsearch");
		return mav;
	}
	
	@RequestMapping(value="/hallsearch2.we")
	public ModelAndView hallstation(@RequestParam("stationType")String stationType){
		ModelAndView mav = new ModelAndView();
		List<HallDTO> halinlist = halleDao.hallLinesearch(stationType);
		mav.addObject("hallview",halinlist);
		mav.setViewName("halllook/hallsearch");
		return mav;
	}
	
	@RequestMapping(value="/hallsearch3.we")
	public ModelAndView hallname(@RequestParam("name")String name){
		ModelAndView mav = new ModelAndView();
		List<HallDTO> halname = halleDao.hallname(name);
		mav.addObject("hallview",halname);
		mav.setViewName("halllook/hallsearch");
		return mav;
	}

	
	/* 견적확인 */
	@RequestMapping(value = "/hallestimate.we")
	public ModelAndView hallestlist(@RequestParam(value="hall_idx",defaultValue="1")int hall_idx) {
		ModelAndView est = new ModelAndView();
		HalleDTO dto = halleDao.halles(hall_idx);
		HallDTO dto2= halleDao.halle(hall_idx);
		est.addObject("hallestList",dto);
		est.addObject("hallview",dto2);
		est.setViewName("halllook/hallestimate");
		return est;
	}
	
	/*견적서 모형 보기*/
	@RequestMapping(value="/hallmode.we")
	public ModelAndView hallesview(HalleDTO dto,@RequestParam(value="hall_idx")int hall_idx){
		dto = halleDao.halles(hall_idx);
		List<RoomDTO> dtorom = halleDao.hallroom(hall_idx);
		ModelAndView mas = new ModelAndView("halllook/hallmode");
		mas.addObject("hallmod", dto);
		mas.addObject("dtorom", dtorom);
		return mas;
	}
	
	/*랭킹*/
	@RequestMapping(value="/hallranking.we")
	public ModelAndView hallrank(){
	ModelAndView mas = new ModelAndView("halllook/hallranking");
	List<HallDTO> list = halleDao.rankingList();
	mas.addObject("hallrank", list);
	return mas;
	}
	
	@RequestMapping("/placeSer.we")
	public ModelAndView hallser(String serText){
		ModelAndView mav = new ModelAndView();
		HallDTO list = hallDao.hallSer(serText);
		mav.addObject("list",list);
		mav.setViewName("card/pSearch");
		return mav;
	}

}
