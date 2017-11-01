package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import yong.bbs.model.BbsDTO;
import yong.card.model.CardDAO;
import yong.card.model.CardDTO;

@Controller
public class CardController {
	@Autowired
	private CardDAO cardDao;
	
	@RequestMapping("/cardList.we")
	public ModelAndView bbsList(@RequestParam(value="cp",
	defaultValue="1")int cp){
		int totalCnt = cardDao.getTotalCnt();
		int listSize = 5;
		int pageSize = 5;
		String pageStr = yong.page.PageModule.makePage("cardList.we", totalCnt, listSize, pageSize, cp);
		
		
		List<CardDTO> list=cardDao.cardList(cp,listSize);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("card/cardList");
		return mav;
	}
}
