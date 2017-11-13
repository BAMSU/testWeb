package controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import hall.model.HallDAO;
import hall.model.HallDTO;
import hallEstimate.model.HalleDAO;
import hallEstimate.model.HalleDTO;

@Controller
public class HallsearchController {

	@Autowired
	private HallDAO hallDao;
	@Autowired
	private HalleDAO halleDao;

	@RequestMapping(method = RequestMethod.GET, value = "/hallsearch.do")
	public String hallsearhForm() {
		return "hall/hallsearch";
	}

	/* 검색 */
	@RequestMapping(value = "/hallsearch.do", method = RequestMethod.POST)
	/* @ResponseBody */
	public ModelAndView getHallList(){
		ModelAndView mav = new ModelAndView();
		List<HallDTO> list = hallDao.getHallList();
		mav.addObject("list", list);
		mav.setViewName("hall/hallsearch");

		return mav;
	}
	
	/*확인해보기*/
	@RequestMapping(value="/hallsearchlist.do")
	public ModelAndView test(){
		ModelAndView mav = new ModelAndView();
				List<HallDTO> list = hallDao.getHallList();
				mav.addObject("list",list);
				mav.setViewName("hall/hallsearch");
				return mav;
				
	}
/*	
값 넘어가기
	@RequestMapping(value="/hallsearchlist.do")
	public String hallview(ModelMap model,httpservletrequest request)throws Exception{
		try{
			int cnt=Integer.parseInt(request.getParameter("cnt"));
			for(int j=1;j<=cnt;j++){
				for(int i = 0; i < request.getParameterValues("ch" + String.valueOf(j)).length ; i++){
					System.out.println(request.getParameterValues("ch" + String.valueOf(j))[i]);
				}
			}	
		} catch(Exception e){
			e.printStackTrace();
		}
	
		}*/
	
	
	/* 견적서확인 */
	@RequestMapping(value = "/hallestmate.do")
	public ModelAndView hallestlist(HalleDTO edto) {
		ModelAndView est = new ModelAndView();
		List<HalleDTO> hallest = halleDao.hallestlist(edto);
		est.addObject("hallestmate.do", hallest);
		est.setViewName("hall/hallestmate");
		return est;
	}

	/* 견적서 수정 */
	@RequestMapping(value = "/hallestList.do")
	public ModelAndView hallUpdate(HalleDTO edto) {
		ModelAndView mav = new ModelAndView();
		List<HalleDTO> list = halleDao.hallUpdate(edto);
		mav.addObject("list", list);
		mav.setViewName("hall/hallestmate");
		return mav;
	}

	/* 견적서 검색 */
	@RequestMapping(value = "/hallestmatelist.do")
	public ModelAndView estfind(@RequestParam(value = "hall_type", defaultValue = " ") String hall_type,
			@RequestParam(value = "guest", defaultValue = " ") String guest,
			@RequestParam(value = "interval", defaultValue = " ") String interval) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("estfind", halleDao.estfind(hall_type, guest, interval));
		mav.setViewName("hall/hallestmatelist");
		return mav;

	}

}
