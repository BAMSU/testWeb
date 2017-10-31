package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HallController {
	
	@RequestMapping("/hallInfo.we")
	public String hallInfoForm(){
		return "hall/hallInfo";
	}
}
