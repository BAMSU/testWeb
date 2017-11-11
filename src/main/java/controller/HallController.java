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
import hallStats.model.HallStatsDAO;
import hallStats.model.HallStatsDTO;
import room.model.RoomDAO;

@Controller
public class HallController {
	@Autowired
	private HallDAO hallDao;
	@Autowired
	private RoomDAO roomDao;
	@Autowired
	private HallStatsDAO hallStatsDao;
	
	@RequestMapping("/hallInfo.we")
	public ModelAndView hallInfoForm(@RequestParam(value="idx",defaultValue="1")int idx){
		ModelAndView mav = new ModelAndView("hall/hallInfo");
		mav.addObject("hallInfo",hallDao.getHallInfo(idx));
		mav.addObject("roomInfo",roomDao.roomInfo(idx));
		return mav;
	}
	
	@RequestMapping(value="/hallCompare.we", method=RequestMethod.GET)
	public ModelAndView hallCompareForm(@RequestParam(value="idx",defaultValue="0")int idx){
		ModelAndView mav = new ModelAndView("hall/hallCompare");
		mav.addObject("hallGu",hallDao.getHallGu());
		mav.addObject("hallList",hallDao.getHallList());
		mav.addObject("hallIdx",idx);
		return mav;
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
	
	@RequestMapping(value="/hallStats.we",method=RequestMethod.GET)
	public ModelAndView hallStatsForm(@RequestParam(value="idx",defaultValue="1")int idx,
			@RequestParam(value="name",defaultValue="호텔프리마")String name){
		ModelAndView mav = new ModelAndView("hall/hallStats");
		mav.addObject("hallIdx",idx);
		mav.addObject("hallName",name);
		mav.addObject("hallRank1",hallStatsDao.getHallStatsRank(idx, "상담신청"));
		mav.addObject("hallRank2",hallStatsDao.getHallStatsRank(idx, "홀 견적내기"));
		mav.addObject("hallRank3",hallStatsDao.getHallStatsRank(idx, "고객평가"));
		mav.addObject("hallRank4",hallStatsDao.getHallStatsRank(idx, "홀vs홀"));
		mav.addObject("hallCount",hallStatsDao.getHallCount());
		return mav;
	}
	
	@RequestMapping(value="/hallStats.we",method=RequestMethod.POST)
	public ModelAndView hallStatsInfo(@RequestParam(value="idx",defaultValue="1")int idx){
		ModelAndView mav = new ModelAndView("jsonView");
		mav.addObject("hallStats1",hallStatsDao.getHallStatsList(idx,"상담신청"));
		mav.addObject("hallStats2",hallStatsDao.getHallStatsList(idx,"홀 견적내기"));
		mav.addObject("hallStats3",hallStatsDao.getHallStatsList(idx,"홀vs홀"));
		mav.addObject("hallStats4",hallStatsDao.getHallStatsList(idx,"고객평가"));
		return mav;
	}
	
	@RequestMapping("/hallLocation.we")
	public ModelAndView hallLocationForm(){
		return new ModelAndView("hall/hallLocation");
	}
}
