package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import hall.model.HallDAO;
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
		mav.addObject("hallInfo",hallDao.HallInfo(idx));
		mav.addObject("roomInfo",roomDao.roomInfo(idx));
		return mav;
	}
	
}
