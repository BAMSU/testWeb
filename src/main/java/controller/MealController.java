package controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import meal.model.mealDAO;

@Controller
public class MealController {
	
	@Autowired
	private mealDAO dao;
	
	@RequestMapping("/mealList.we")
	public ModelAndView wdList(int idx) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.getMealList(idx));
		mav.setViewName("wd/wdList");
		return mav;
	}
}
