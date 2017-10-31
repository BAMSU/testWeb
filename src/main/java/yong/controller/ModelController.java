package yong.controller;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ModelController {
	
	@RequestMapping("/modelTest1.do")
	public String modelTest1(Map model) {
		String msg="Map��ü�� �̿��� ������ ����!";
		model.put("result", msg);
		return "model/modelOk";
	}
	
	@RequestMapping("/modelTest2.do")
	public String modelTest2(Model model) {
		model.addAttribute("result", "Model��ü�� �̿��� ������ ����!");
		return "model/modelOk";
	}
	
	@RequestMapping("/modelTest3.do")
	public String modelTest3(ModelMap model) {
		String msg="ModelMap��ü�� �̿��� ������ ����!";
		//model.put("result", msg);
		model.addAttribute("result", "Model��ü�� �̿��� ������ ����!");
		return "model/modelOk";
	}
	
	/*@RequestMapping("/model/modelOk.do")
	public Map modelTest4(){
		Map model = new HashMap();
		model.put("result", "Map��ü�� ��ȯ�� ������ ������!");
		return model;
	}*/
	
	@RequestMapping("/model/modelOk.do")
	public Model modelTest5(){
		Model model = new ExtendedModelMap();
		model.addAttribute("result", "Model��ü�� ��ȯ�� ������ ������!");
		return model;
		
	}

}
