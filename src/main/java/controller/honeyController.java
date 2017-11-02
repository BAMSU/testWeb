package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import honey.model.honeyDAO;
import honey.model.honeyDTO;

@Controller
public class honeyController {

		/*@Autowired
		honeyDAO honeyDao; */
	 
		@RequestMapping("/honeyIndex.we")
		public String honeyIndex() {
			return "honey";
		}
		
		
		
		@RequestMapping("/honeyContent.we")
		public ModelAndView packageList(@RequestParam(value="p_idx") int p_idx) {
			//String p_name = honeyDao.honeyGO(p_idx);
			ModelAndView mav = new ModelAndView();
		//	mav.addObject("p_name", p_name);
			
			mav.setViewName("honey/honeyList");
			
			return mav;
		}
}
