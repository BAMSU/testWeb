package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import hall.model.HallDAO;
import hall.model.HallDTO;
import hall.model.HallListModule;
import room.model.RoomDAO;

@Controller
public class HallController {
	@Autowired
	private HallDAO hallDao;
	@Autowired
	private RoomDAO roomDao;
	
	@RequestMapping("/hallInfo.we")
	public ModelAndView hallInfoForm(@RequestParam(value="idx",defaultValue="1")int idx){
		ModelAndView mav = new ModelAndView("hall/hallInfo");
		mav.addObject("hallInfo",hallDao.getHallInfo(idx));
		mav.addObject("roomInfo",roomDao.roomInfo(idx));
		return mav;
	}
	
	@RequestMapping(value="/hallCompare.we", method=RequestMethod.GET)
	public ModelAndView hallCompareForm(){
		return new ModelAndView("hall/hallCompare","hallList",hallDao.getHallList());
	}
	
	
	@RequestMapping(value="/hallCompare.we", method=RequestMethod.POST)
	public ModelAndView hallCompareSubmit(@RequestParam("idx")int idx){
		return new ModelAndView("jsonView","hallListByIdx",hallDao.getHallInfo(idx));
	}

	@RequestMapping("/hallAddSearchByGu.we")
	public ModelAndView hallAddSearchByGuSubmit(@RequestParam(value="gu",defaultValue="all")String gu){
		ModelAndView mav = new ModelAndView("jsonView");
		//ModelAndView mav = new ModelAndView("hall/hallCompare");
		List<HallDTO> hl = null;
		if(gu.equals("all")) hl=hallDao.getHallList();
		else hl=hallDao.getHallListByGu(gu);
		mav.addObject("hallListBy",HallListModule.makeHallList(hl));
		//mav.addObject("hallListBy",hl);
		return mav;
	}
	@RequestMapping("/hallAddSearchByName.we")
	public ModelAndView hallAddSearchByNameSubmit(@RequestParam("name")String name){
		List<HallDTO> hl = hallDao.getHallListByName(name);
		ModelAndView mav = new ModelAndView("jsonView");
		if(hl==null || hl.size()==0){
			mav.addObject("hallListBy","none");
		}else{
			mav.addObject("hallListBy",HallListModule.makeHallList(hl));
		}
		return mav;
	}
	
	
}
