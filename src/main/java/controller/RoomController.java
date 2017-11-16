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
			
		} else {
			mav.addObject("msg", "등록 실패!");
		}
		
		
		String add = "roomList.we?idx=" + dto.getHallIdx();

		mav.addObject("gourl", add);
		mav.setViewName("room/roomMsg");
		return mav;
	}
	
	
	@RequestMapping(value="/updateRoom.we", method=RequestMethod.GET)
	public ModelAndView updateRForm(int idx) {
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("list", dao.roomInfo2(idx));
		mav.addObject("idx", idx);
		mav.setViewName("room/updateRoom");
		return mav;
	}
	
	@RequestMapping(value="/updateRoom.we", method=RequestMethod.POST)
	public ModelAndView updateR(aRoomDTO dto) {
		ModelAndView mav = new ModelAndView();
		
		
		int result = dao.updateR(dto);
		
		if(result>0) {
			mav.addObject("msg", "수정 성공!");
			
		} else {
			mav.addObject("msg", "수정 실패!");
		}
		
		
		String add = "roomList.we?idx=" + dto.getHallIdx();

		mav.addObject("gourl", add);
		mav.setViewName("room/roomMsg");
		return mav;
	}
	
	@RequestMapping("/deleteRoom.we")
	public ModelAndView deleteR(int idx) {
		ModelAndView mav = new ModelAndView();
		String add = "roomList.we?idx=" + dao.whatHall(idx);
		int result = dao.deleteR(idx);
		
		if(result>0) {
			mav.addObject("msg", "삭제 성공!");
			
		} else {
			mav.addObject("msg", "삭제 실패!");
		}
		

		mav.addObject("gourl", add);
		mav.setViewName("room/roomMsg");
		return mav;
	}

}
