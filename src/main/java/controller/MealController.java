package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import meal.model.mealDAO;
import meal.model.mealDTO;

@Controller
public class MealController {
	
	@Autowired
	private mealDAO dao;
	
	@RequestMapping("/mealList.we")
	public ModelAndView wdList(int idx) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.getMealList(idx));
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
	public ModelAndView insertM(mealDTO dto) {
		ModelAndView mav = new ModelAndView();
		int result = dao.insertM(dto);
		if(result>0) {
			mav.addObject("msg", "식사등록완료");
		} else {
			mav.addObject("msg", "식사등록실패");
		}
		mav.addObject("idx", dto.getIdx());
		mav.addObject("gourl", "mealList.we");
		mav.setViewName("meal/Msg");
		return mav;
	}
	
	@RequestMapping(value="/updateMeal.we", method=RequestMethod.GET)
	public ModelAndView updateMform(int idx) {
		ModelAndView mav = new ModelAndView();
		System.out.println(idx);
		mav.addObject("list", dao.getMealList2(idx));
		mav.addObject("idx", idx);
		mav.setViewName("meal/updateMeal");
		return mav;
	}
	
	@RequestMapping(value="/updateMeal.we", method=RequestMethod.POST)
	public ModelAndView updateM(mealDTO dto) {
		ModelAndView mav = new ModelAndView();
		int result = dao.updateM(dto);
		if(result>0) {
			mav.addObject("msg", "식사수정완료");
		} else {
			mav.addObject("msg", "식사수정실패");
		}
		mav.addObject("idx", dto.getIdx());
		
		mav.addObject("gourl", "mealList.we");
		mav.setViewName("meal/Msg");
		return mav;
	}
}
