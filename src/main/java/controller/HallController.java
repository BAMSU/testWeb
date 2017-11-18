package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import hall.model.*;
import hallStats.model.*;
import review.model.*;
import room.model.*;
import scrap.model.*;

@Controller
public class HallController {
	@Autowired
	private HallDAO hallDao;
	@Autowired
	private RoomDAO roomDao;
	@Autowired
	private HallStatsDAO hallStatsDao;
	@Autowired
	private ScrapDAO scrapDao;
	@Autowired
	private ReviewDAO reviewDao;
	
	@RequestMapping("/hallInfo.we")
	public ModelAndView hallInfoForm(@RequestParam(value="idx",defaultValue="1")int idx,
			@RequestParam(value="cp",defaultValue="1")int cp,
			HttpSession session){
		ModelAndView mav = new ModelAndView("hall/hallInfo");
		HallDTO h = hallDao.getHallInfo(idx);
		mav.addObject("hallInfo",h);
		mav.addObject("roomInfo",roomDao.roomInfo(idx));
		mav.addObject("reviewList",reviewDao.hallReviewList(cp, 5, h.getName()));
		mav.addObject("pageStr",PageModule.makePage("hallInfo.we", reviewDao.getTotelContByHall(h.getName()), 5, 5, cp));
		String name = "";
		boolean srp=false;
		if(session.getAttribute("sname")!=null){
			name = (String) session.getAttribute("sname");
			if(scrapDao.getScrap(name, idx)>0){
				srp=true;
			}
		}
		mav.addObject("userName",name);
		mav.addObject("srp",srp);
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
		hallStatsDao.upHallStats(idx, "홀vs홀");
		return new ModelAndView("jsonView","hallListByIdx",hallDao.getHallInfo(idx));
	}

	@RequestMapping("/hallAddSearchByGu.we")
	public ModelAndView hallAddSearchByGuSubmit(@RequestParam(value="gu",defaultValue="all")String gu){
		ModelAndView mav = new ModelAndView("jsonView");
		List<HallDTO> hl = null;
		if(gu.equals("all")) hl=hallDao.getHallList();
		else hl=hallDao.getHallListByGu(gu);
		mav.addObject("hallListBy",HallListModule.makeHallList(hl));
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
	
	@ResponseBody
	@RequestMapping(value="/scrap.we",method=RequestMethod.GET)
	public String insertScrap(@RequestParam(value="idx",defaultValue="1")int idx,
			HttpSession session){
		boolean srp = false;
		if(session.getAttribute("sname") != null){
			if(scrapDao.insertScrap((String) session.getAttribute("sname"), idx)>0){
				srp=true;
			}
		}
		return String.valueOf(srp);
	}
	
	@ResponseBody
	@RequestMapping(value="/scrap.we",method=RequestMethod.POST)
	public String deleteScrap(@RequestParam(value="idx",defaultValue="1")int idx,
			HttpSession session){
		boolean srp = false;
		if(session.getAttribute("sname") != null){
			if(scrapDao.deleteScrap((String) session.getAttribute("sname"), idx)>0){
				srp=true;
			}
		}
		return String.valueOf(srp);
	}
}
