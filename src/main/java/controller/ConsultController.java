package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import consult.model.*;


@Controller
public class ConsultController {
	
	@Autowired
	private ConsultDAO consultDao;
	
	@RequestMapping(value="/consult.we",method=RequestMethod.GET)
	public ModelAndView consultWriteForm(@RequestParam("gubun")int gubun,@RequestParam("idx")int idx ){		
			
			ModelAndView mav = new ModelAndView();
			mav.addObject("gubun", gubun);
			mav.addObject("idx", idx);
			mav.setViewName("consult/consultMain");
			return mav;
		
	}
	
	@RequestMapping(value="/consult.we",method=RequestMethod.POST)
	public ModelAndView bbsWriteSubmit(ConsultDTO dto){
		
		int result =consultDao.consultWrite(dto);
		String msg = result>0?"문의가 완료 되었습니다.":"문의 가 실패 하였습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("consult/consultMsg");
		return mav;
		
	}
	
	
	
	@RequestMapping("/consultList.we")
	public ModelAndView consultList(@RequestParam(value="cp",defaultValue="1")int cp,HttpSession session){
		
		
		String name =(String)session.getAttribute("sname");
		int totalCnt = consultDao.getTotelCont();
		int listSize = 10;
		int pageSize = 5;
		String pageStr = yong.page.PageModule.makePage("consultList.we", totalCnt, listSize, pageSize, cp);
		
		List<ConsultDTO> list=consultDao.consultList(cp,listSize,name);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("consult/consultList");
		return mav;
	}
	
	@RequestMapping("/consultDel.we")
	public ModelAndView consultDel(@RequestParam("idx")int idx){
		
		int result = consultDao.consultDel(idx);
		String msg = result>0?"삭제 완료 되었습니다.":"삭제 실패 하였습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("consult/consultMsg");
		
		return mav;
		
	}
	
	@RequestMapping("/consultContent.we")
	public ModelAndView bbsContent2( int idx){
		
		ConsultDTO dto = consultDao.consultContent(idx);
	
		dto.setContext(dto.getContext().replaceAll("\r", "<br>"));
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		
		mav.setViewName("consult/consultContent");
		return mav;
	}
	@RequestMapping("consultUpdateForm.we")
	public ModelAndView consultUpdateForm(@RequestParam("idx")int idx,@RequestParam("name")String name
									,@RequestParam("reservation")String reservation
									,@RequestParam("context")String context){
		ModelAndView mav = new ModelAndView();
		mav.addObject("idx", idx);
		mav.addObject("name", name);
		mav.addObject("reservation", reservation);
		mav.addObject("context", context);
		mav.setViewName("consult/consultUpdate");
		return mav;
	
	}
	
	@RequestMapping("consultUpdate.we")
	public ModelAndView consultUpdate(ConsultDTO dto,@RequestParam("idx")int idx){
		
		int result =consultDao.consultUpdate(dto,idx);
		String msg = result>0?"수정 완료 되었습니다.":"수정 실패 하였습니다.";
		ModelAndView mav = new ModelAndView();
		mav.addObject("msg", msg);
		mav.setViewName("consult/consultMsg");
		return mav;
		
	}
	
	@RequestMapping("/AllConsultList.we")
	public ModelAndView AllhallList(@RequestParam(value="cp",defaultValue="1")int cp){
	
		int totalCnt = consultDao.getTotelCont();
		int listSize = 5;
		int pageSize = 2;
		String pageStr = yong.page.PageModule.makePage("AllConsultList.we", totalCnt, listSize, pageSize, cp);
		
		
		List<ConsultDTO> list=consultDao.AllConsultList(cp,listSize);
		
		
		ModelAndView mav = new ModelAndView();
	
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("consult/AllConsultList");
		return mav;
	}

}
