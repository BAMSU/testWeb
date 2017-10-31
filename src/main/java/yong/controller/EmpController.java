package yong.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yong.emp.model.EmpDAO;
import yong.emp.model.EmpDTO;

@Controller
public class EmpController {
	
	@Autowired
	private EmpDAO empDao;
	
	@RequestMapping("/emp.do")
	public String empForm() {
		return "emp/emp";
	}
	
	@RequestMapping("/empAdd.do")
	public ModelAndView empAdd(EmpDTO dto) {
		int result = empDao.empAdd(dto);
		String msg = result>0?"사원등록성공!":"사원등록실패!";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("emp/empMsg");
		return mav;
	}
	
	@RequestMapping("/empDelete.do")
	public ModelAndView empDelete(@RequestParam("name")String name) {
		int result = empDao.empDelete(name);
		String msg = result>0?"사원삭제성공!":"사원삭제실패!";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("emp/empMsg");
		return mav;
	}
	
	@RequestMapping("/empList.do")
	public ModelAndView empList() {
		List<EmpDTO> arr = empDao.empList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("empList", arr);
		mav.setViewName("emp/empList");
		return mav;
	}
	
	@RequestMapping("/empAjaxList.do")
	public ModelAndView empAjaxList() {
		List<EmpDTO> arr = empDao.empList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("empList", arr);
		mav.setViewName("emp/getEmp");
		return mav;
	}
		
	@RequestMapping("/empJsonList.do")
	public ModelAndView empJsonList() {
		List<EmpDTO> arr = empDao.empList();
		ModelAndView mav = new ModelAndView();
		mav.addObject("empList", arr);
		mav.setViewName("emp/getEmpJson");
		return mav;
	}
	
	@RequestMapping("/empSearch.do")
	public ModelAndView empSearch(String name) {
		List<EmpDTO> arr = empDao.empSearch(name);
		ModelAndView mav = new ModelAndView();
		mav.addObject("empList", arr);
		mav.setViewName("emp/empList");
		return mav;
	}
	
	@RequestMapping(value="/empUpdate.do",method=RequestMethod.GET)
	public ModelAndView empUpdate(int idx) {
		List<EmpDTO> arr = empDao.empUpdate(idx);
		ModelAndView mav = new ModelAndView();
		mav.addObject("empList", arr);
		mav.setViewName("emp/empUpdate");
		return mav;
	}
	
	@RequestMapping(value="/empUpdate.do",method=RequestMethod.POST)
	public ModelAndView empUpdate_ok(EmpDTO dto) {
		int result = empDao.empUpdateOk(dto);
		String msg = result>0?"사원수정성공!":"사원수정실패!";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("emp/empMsg");
		return mav;
	}
}
