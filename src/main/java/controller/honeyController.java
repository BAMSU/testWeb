package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class honeyController {

	@RequestMapping(method= RequestMethod.GET, value="/honey.we")
	   public String honeyForm() {
	      return "honey/honeyMoon";
	      
	   }
	
	@RequestMapping(method=RequestMethod.GET, value="/honeyPackage.we")
	public String honeyPackage(@RequestParam("nation")String nation) {
		return "honey/honeyPackagelist_"+nation;
	}
	
	@RequestMapping(method=RequestMethod.GET, value="/honeyContent.we")
	public String honeyContent(@RequestParam("nation")String nation,
			@RequestParam("idx")String idx) {
		return "honey/honeyContent/honeyContent_"+nation+idx;
	}
	
	
	@RequestMapping(method=RequestMethod.GET, value="/countryContent.we")
	public String nationContent(@RequestParam("country") String country) {
		return "honey/honeyContent/nation/"+country+"info";
	}
	
	
}
