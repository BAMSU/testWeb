package controller;

import java.io.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.codec.binary.Base64;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
		int listSize = 8;
		int pageSize = 5;
		String pageStr = yong.page.PageModule.makePage("cardList.we", totalCnt, listSize, pageSize, cp);
		
		List<CardDTO> list=cardDao.cardList(cp,listSize);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pageStr", pageStr);
		mav.setViewName("card/cardMain");
		return mav;
	}
	
	@RequestMapping("/cardMake.we")
	public ModelAndView test(@RequestParam(value="idx")int idx){
		ModelAndView mav = new ModelAndView();
		mav.addObject("idx", idx);
		String filename = "filename";
		mav.addObject("filename",filename);
		mav.setViewName("card/cardMake");
		return mav;
	}
	
	@RequestMapping("/test.we")
	public ModelAndView test(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("card/OrderTest");
		return mav;
	}
	
	@RequestMapping("/insa.we")
	public ModelAndView insa(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("card/makeInsa");
		return mav;
	}
	@RequestMapping("/hongu.we")
	public ModelAndView hongu(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("card/makeHongu");
		return mav;
	}
	
	@RequestMapping("/place.we")
	public ModelAndView place(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("card/OrderTest");
		return mav;
	}
	
	@RequestMapping("/cardOrder.we")
	public ModelAndView cardOrder(@RequestParam(value="idx")int idx){
		ModelAndView mav = new ModelAndView();
		CardDTO list= cardDao.cardSer(idx);
		mav.addObject("list", list);
		mav.setViewName("card/cardOrder");
		return mav;
	}
	
	 @RequestMapping(value = "/imgsave.we",method = {RequestMethod.GET, RequestMethod.POST})
	   public void download(
			   ModelMap modelMap, 
			   HttpServletRequest request, 
			   HttpServletResponse response) {
	        try {
	            String imgData = request.getParameter("imgData");
	            imgData = imgData.replaceAll("data:image/png;base64,", "");
	            byte[] file = Base64.decodeBase64(imgData);
	            ByteArrayInputStream is = new ByteArrayInputStream(file);
	            response.setContentType("image/png");
	            response.setHeader("Content-Disposition", "attachment; filename=report.png");
	            
	            IOUtils.copy(is, response.getOutputStream());
	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	 
	    }
	 /** * 캡쳐된 화면 서버 저장 * @param request * @return * @throws Exception */ 
	 @RequestMapping(value="/imgsave2.we")
	 public ModelAndView createImage(HttpServletRequest request) 
			 throws Exception {
	 String binaryData = request.getParameter("imgSrc");
	 FileOutputStream stream = null;
	 ModelAndView mav = new ModelAndView();
	 mav.setViewName("jsonView");
	 try {
		 System.out.println("binary file " + binaryData);
		 if (binaryData == null || binaryData == "") {
			 throw new Exception();
		 }
		 
		 binaryData = binaryData.replaceAll("data:image/png;base64,", "");
		 byte[] file = Base64.decodeBase64(binaryData);
		 System.out.println("file :::::::: " + file + " || " + file.length);
		 String fileName = UUID.randomUUID().toString();
		 stream = new FileOutputStream("C:\\test\\" + fileName + ".png");
		 stream.write(file);
		 stream.close();
		 mav.addObject("filename", fileName);
	 } catch (Exception e) {
		 System.out.println("파일이 정상적으로 넘어오지 않았습니다");
		 return mav;
	 } finally {
		 stream.close();
	 }
	 	return mav;
	 }
}
