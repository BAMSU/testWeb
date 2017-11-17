package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ahall.model.aHallDAO;
import ahall.model.aHalleDAO;
import ahall.model.aHalleDTO;
import meal.model.mealDAO;

@Controller
public class MealController {
	
	@Autowired
	private aHalleDAO dao;
	
	@Autowired
	private mealDAO dao2;
	
	
	@RequestMapping("/mealList.we")
	public ModelAndView wdList(int idx) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao2.getMealList(idx));
		mav.addObject("idx", idx);
		mav.setViewName("meal/mealList");
		return mav;
	}
	
	@RequestMapping(value="/insertMeal.we", method=RequestMethod.GET)
	public ModelAndView insertMform(int idx) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("idx", idx);
		mav.setViewName("meal/insertMeal");
		return mav;
	}
	
	@RequestMapping(value="/insertMeal.we", method=RequestMethod.POST)
	public ModelAndView insertM(aHalleDTO dto) {
		ModelAndView mav = new ModelAndView();
		int result = dao.insertEs(dto);
		if(result>0) {
			mav.addObject("msg", "등록완료");
		} else {
			mav.addObject("msg", "등록실패");
		}
		mav.addObject("idx", dto.getHall_idx());
		mav.addObject("gourl", "mealList.we");
		mav.setViewName("meal/Msg");
		return mav;
	}
	
	
	
	@RequestMapping(value="/updateMeal.we", method=RequestMethod.POST)
	public ModelAndView updateM(aHalleDTO dto) {
		ModelAndView mav = new ModelAndView();
		int result = dao.updateEs(dto);
		if(result>0) {
			mav.addObject("msg", "수정완료");
		} else {
			mav.addObject("msg", "수정실패");
		}
		mav.addObject("idx", dto.getHall_idx());
		
		mav.addObject("gourl", "mealList.we");
		mav.setViewName("meal/Msg");
		return mav;
	}
}
