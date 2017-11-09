package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	
	@RequestMapping("/admin.we")
	public String adminForm() {
		return "admin/admin";
	}
	
	@RequestMapping("/wdmg.we")
	public String wdmgForm() {
		return "admin/wdmg";
	}
	
	@RequestMapping("/ecmg.we")
	public String ecmgForm() {
		return "admin/ecmg";
	}
		
	@RequestMapping("/rkmg.we")
	public String rkmgForm() {
		return "admin/rkmg";
	}
	
	@RequestMapping("/fqmg.we")
	public String fqmgForm() {
		return "admin/fqmg";
	}
	
	
	
	

}
