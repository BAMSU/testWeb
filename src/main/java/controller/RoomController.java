package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ahall.model.aHallDTO;
import aroom.model.aRoomDAO;
import aroom.model.aRoomDTO;

@Controller
public class RoomController {
	
	@Autowired
	private aRoomDAO dao;
	
	@RequestMapping("/roomList.we")
	public ModelAndView roomList(int idx) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.roomInfo(idx));
		mav.addObject("idx", idx);
		mav.addObject("cnt", dao.cnt(idx));
		mav.setViewName("room/roomList");
		return mav;
	}
	
	@RequestMapping(value="/insertRoom.we", method=RequestMethod.GET)
	public ModelAndView insertRForm(int idx) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("idx", idx);
		mav.setViewName("room/insertRoom");
		return mav;
	}
	
	@RequestMapping(value="/insertRoom.we", method=RequestMethod.POST)
	public ModelAndView insertR(aRoomDTO dto) {
		ModelAndView mav = new ModelAndView();
		
		
		int result = dao.insertR(dto);
		
		if(result>0) {
			mav.addObject("msg", "등록 성공!");
			mav.addObject("gourl", "admin.we");
			
		} else {
			mav.addObject("msg", "등록 실패!");
			mav.addObject("gourl", "admin.we");
		}
		mav.setViewName("room/roomMsg");
		return mav;
	}
	
	
	/*@RequestMapping("/insertWd.we")
	public String adminForm() {
		return "wd/insertWd";
	}
	
	@RequestMapping("/insertWd2.we")
	public ModelAndView adminAction(aHallDTO dto) {
		ModelAndView mav = new ModelAndView();
		int result = dao.insertWd(dto);
		
		if(result>0) {
			mav.addObject("msg", "등록 성공!");
			mav.addObject("gourl", "wdList.we");
			
		} else {
			mav.addObject("msg", "등록 실패!");
			mav.addObject("gourl", "wdList.we");
		}
		mav.setViewName("wd/wdMsg");
		return mav;
	}
	
	@RequestMapping("/wdList.we")
	public ModelAndView wdList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.getHallList());
		mav.setViewName("wd/wdList");
		return mav;
	}
	
	@RequestMapping("/updateWd.we")
	public ModelAndView wdContent(int idx) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", dao.getHallInfo(idx));
		mav.setViewName("wd/updateWd");
		return mav;
	}
	
	@RequestMapping("/update2.we")
	public ModelAndView updateWd(aHallDTO dto) {
		
		ModelAndView mav = new ModelAndView();
		int result = dao.updateWd(dto);
		
		if(result>0) {
			mav.addObject("msg", "수정 성공!");
			mav.addObject("gourl", "wdList.we");
			
		} else {
			mav.addObject("msg", "수정 실패!");
			mav.addObject("gourl", "wdList.we");
		}
		mav.setViewName("wd/wdMsg");
		return mav;
	}*/

}
