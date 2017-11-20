package controller;

import java.awt.image.BufferedImage;
import java.io.*;
import java.net.URLEncoder;
import java.util.*;

import javax.imageio.ImageIO;
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
import yong.card.model.PageModule;
import yong.cardOrder.model.CardOrderDAO;
import yong.cardOrder.model.CardOrderDTO;

import org.springframework.web.servlet.view.AbstractView; 
import com.google.zxing.BarcodeFormat;
import com.google.zxing.client.j2se.MatrixToImageConfig;
import com.google.zxing.client.j2se.MatrixToImageWriter; 
import com.google.zxing.common.BitMatrix; 
import com.google.zxing.qrcode.QRCodeWriter;


@Controller
public class CardController {
	@Autowired
	private CardDAO cardDao;
	
	@Autowired
	private CardOrderDAO cardOrderDao;
	
	@RequestMapping("/mycard.we")
	public ModelAndView mycard(){
		ModelAndView mav = new ModelAndView();
		mav.addObject("filename", "1fa4da92-6d64-4e29-ab3f-e2df455fba2e.png");
		mav.setViewName("card/cardMobile");
		return mav;
	}
	
	@RequestMapping("/cardList.we")
	public ModelAndView bbsList(@RequestParam(value="cp",
	defaultValue="1")int cp, @RequestParam(value="type",
	defaultValue="1")int type){
		int totalCnt = cardDao.getTotalCnt();
		int listSize = 8;
		int pageSize = 5;
		String pageStr = PageModule.makePage("cardList.we", totalCnt, listSize, pageSize, cp);
		
		List<CardDTO> list=cardDao.cardList(cp,listSize, type);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("type", type-1);
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
		mav.setViewName("card/pSearch");
		return mav;
	}
	
	
	@RequestMapping("/cardOrder.we")
	public ModelAndView cardOrder(@RequestParam(value="idx")int idx, @RequestParam(value="filename")String filename){
		ModelAndView mav = new ModelAndView();
		CardDTO list= cardDao.cardSer(idx);
		mav.addObject("list", list);
		mav.addObject("idx",idx);
		mav.addObject("filename", filename);
		mav.setViewName("card/cardOrder");
		return mav;
	}
	
	/*모바일 페이지 제작 후 QR코드 생성*/
	 @RequestMapping(value = "/imgsave.we",method = {RequestMethod.GET, RequestMethod.POST})
	 public ModelAndView createImage1(HttpServletRequest request,
			 @RequestParam(value="name")String name) 
			 throws Exception {
		 System.out.println(name+"????????");
	 String binaryData = request.getParameter("imgSrc");
	 FileOutputStream stream = null;
	 ModelAndView mav = new ModelAndView();
	 mav.setViewName("jsonView");
	 System.out.println("binary file " + binaryData);
	 try {
	
		 if (binaryData == null || binaryData == "") {
			 throw new Exception();
		 }
		 
		 binaryData = binaryData.replaceAll("data:image/png;base64,", "");
		 byte[] file2 = Base64.decodeBase64(binaryData);
		 //String fileName = UUID.randomUUID().toString();
		 String fileName=name;
		 stream = new FileOutputStream("C:/Users/HWANG/git/testWeb/src/main/webapp/mobile_img/" + fileName + ".png");
		 stream.write(file2);
		 stream.close();
		 mav.addObject("filename", fileName);
		 try {
	            File file = null;
	            
	            // 큐알이미지를 저장할 디렉토리 지정
	            file = new File("C:/Users/HWANG/git/testWeb/src/main/webapp/qr_img/");
	            if(!file.exists()) {
	                file.mkdirs();
	            }
	            // 코드인식시 링크걸 URL주소
	            String codeurl = new String("http://192.168.20.175:9090/finalproject/qr_img/"+name + ".png");
	            // 큐알코드 바코드 생상값
	            int qrcodeColor =   0xFF2e4e96;
	            // 큐알코드 배경색상값
	            int backgroundColor = 0xFFFFFFFF;
	             
	            QRCodeWriter qrCodeWriter = new QRCodeWriter();
	            // 3,4번째 parameter값 : width/height값 지정
	            BitMatrix bitMatrix = qrCodeWriter.encode(codeurl, BarcodeFormat.QR_CODE,200, 200);
	            //
	            MatrixToImageConfig matrixToImageConfig = new MatrixToImageConfig(qrcodeColor,backgroundColor);
	            BufferedImage bufferedImage = MatrixToImageWriter.toBufferedImage(bitMatrix,matrixToImageConfig);
	            // ImageIO를 사용한 바코드 파일쓰기
	            ImageIO.write(bufferedImage, "png", new File("http://192.168.20.175:9090/finalproject/qr_img/"+name+".png"));
	        	
	        } catch (Exception e) {
	            e.printStackTrace();
	        }  
	 } catch (Exception e) {
		 System.out.println("파일이 정상적으로 넘어오지 않았습니다");
		 return mav;
	 } finally {
		 stream.close();
	 }
	 	return mav;
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
		 String fileName = UUID.randomUUID().toString();
		 stream = new FileOutputStream("C:/Users/HWANG/git/testWeb/src/main/webapp/order_img/" + fileName + ".png");
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
	 
	 /** QR코드 */
	 @RequestMapping("/qrMake.we")
	 public ModelAndView qrCode() {
		 ModelAndView mav = new ModelAndView();
			mav.setViewName("card/cardMobile");
	        
	        return mav;
	}
	 /**청첩장 주문*/
	 @RequestMapping("/priceOrder.we")
	 public ModelAndView cardorder(CardOrderDTO dto){
		int result = cardOrderDao.Order(dto);
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("myPage/Mypage");
		return mav;
	 }
	 
}
	 
