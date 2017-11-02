package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HallsearchController {

	
	@RequestMapping(value="hall/hallsearch.we")
	public String hallsearchForm(){
		return "hall/hallsearch";
	}
	
	
}
