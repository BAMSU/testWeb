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
		mav.addObject("filename", "17c7d864-9e34-47e1-90ab-0aa195b0e13a.png");
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
		mav.addObject("pageStr", pageStr);
		mav.addObject("type", type-1);
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
	
	/*紐⑤컮�씪 �럹�씠吏� �젣�옉 �썑 QR肄붾뱶 �깮�꽦*/
	 @RequestMapping(value = "/imgsave.we",method = {RequestMethod.GET, RequestMethod.POST})
	 public ModelAndView createImage1(HttpServletRequest request) 
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
		 byte[] file2 = Base64.decodeBase64(binaryData);
		 //String fileName = UUID.randomUUID().toString();
		 String fileName="37";
		 stream = new FileOutputStream("C:/Users/jj051/git/testWeb/src/main/webapp/mobile_img/" + fileName + ".png");
		 stream.write(file2);
		 stream.close();
		 mav.addObject("filename", fileName);
		 try {
	            File file = null;
	            
	            // �걧�븣�씠誘몄�瑜� ���옣�븷 �뵒�젆�넗由� 吏��젙
	            file = new File("C:/Users/jj051/git/testWeb/src/main/webapp/qr_img/");
	            if(!file.exists()) {
	                file.mkdirs();
	            }
	            // 肄붾뱶�씤�떇�떆 留곹겕嫄� URL二쇱냼
	            String codeurl = new String("http://172.30.1.23:9090/finalproject/mobile_img/"+fileName + ".png");
	            // �걧�븣肄붾뱶 諛붿퐫�뱶 �깮�긽媛�
	            int qrcodeColor =   0xFF2e4e96;
	            // �걧�븣肄붾뱶 諛곌꼍�깋�긽媛�
	            int backgroundColor = 0xFFFFFFFF;
	             
	            QRCodeWriter qrCodeWriter = new QRCodeWriter();
	            // 3,4踰덉㎏ parameter媛� : width/height媛� 吏��젙
	            BitMatrix bitMatrix = qrCodeWriter.encode(codeurl, BarcodeFormat.QR_CODE,200, 200);
	            //
	            MatrixToImageConfig matrixToImageConfig = new MatrixToImageConfig(qrcodeColor,backgroundColor);
	            BufferedImage bufferedImage = MatrixToImageWriter.toBufferedImage(bitMatrix,matrixToImageConfig);
	            // ImageIO瑜� �궗�슜�븳 諛붿퐫�뱶 �뙆�씪�벐湲�
	            ImageIO.write(bufferedImage, "png", new File("C:/Users/jj051/git/testWeb/src/main/webapp/qr_img/"+fileName + ".png"));
	        	
	        } catch (Exception e) {
	            e.printStackTrace();
	        }  
	 } catch (Exception e) {
		 System.out.println("�뙆�씪�씠 �젙�긽�쟻�쑝濡� �꽆�뼱�삤吏� �븡�븯�뒿�땲�떎");
		 return mav;
	 } finally {
		 stream.close();
	 }
	 	return mav;
	 }
	 /** * 罹≪퀜�맂 �솕硫� �꽌踰� ���옣 * @param request * @return * @throws Exception */ 
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
		 stream = new FileOutputStream("C:/Users/jj051/git/testWeb/src/main/webapp/mobile_img/" + fileName + ".png");
		 stream.write(file);
		 stream.close();
		 mav.addObject("filename", fileName);
	 } catch (Exception e) {
		 System.out.println("�뙆�씪�씠 �젙�긽�쟻�쑝濡� �꽆�뼱�삤吏� �븡�븯�뒿�땲�떎");
		 return mav;
	 } finally {
		 stream.close();
	 }
	 	return mav;
	 }
	 
	 /** QR肄붾뱶 */
	 @RequestMapping("/qrMake.we")
	 public ModelAndView qrCode() {
		 ModelAndView mav = new ModelAndView();
			mav.setViewName("card/cardMobile");
	        
	        return mav;
	}
	 /**泥�泥⑹옣 二쇰Ц*/
	 @RequestMapping("/priceOrder.we")
	 public ModelAndView cardorder(CardOrderDTO dto){
		int result = cardOrderDao.Order(dto);
		ModelAndView mav = new ModelAndView(); 
		mav.setViewName("myPage/Mypage");
		return mav;
	 }
	 
}
	 
