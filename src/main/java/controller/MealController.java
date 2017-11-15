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
		mav.addObject("idx", idx);
		mav.setViewName("meal/mealList");
		return mav;
	}
	
	@RequestMapping("/insertMeal.we")
	public ModelAndView insertM(int idx) {
		ModelAndView mav = new ModelAndView();
		System.out.println(idx);
		mav.setViewName("meal/insertMeal");
		return mav;
	}
}
