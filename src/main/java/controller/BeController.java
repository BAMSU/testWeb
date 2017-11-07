package controller;

import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import be.model.BeDAO;
import be.model.BeDTO;
import be.model.CarDTO;
import be.model.SDMYDTO;
import be.model.ShoesDTO;

@Controller
public class BeController {
	//루트 바꿔주기
	private String fileroot = "E:/jspstudy/myweb5/src/main/webapp/upload";
	
	@Autowired
	private BeDAO beDao;
	
	@RequestMapping(value="/beHeader.we",method=RequestMethod.GET)
	public String beHeader() {
		return "be/beHeader";
	}
	
	@RequestMapping(value="/beLogin.we",method=RequestMethod.GET)
	public String beLoginForm() {
		return "be/beLogin";
	}
	
	@RequestMapping(value="/logout.we")
	public ModelAndView beLogout(HttpServletRequest req, HttpServletResponse resp){
		
		HttpSession session = req.getSession();
		session.invalidate();
		
		ModelAndView mav = new ModelAndView();
		String msg = "로그아웃되었습니다.";
		mav.addObject("msg",msg);
		mav.setViewName("be/beLogin");
		
		return mav;
	}
	@RequestMapping(value="/beLogin.we",method=RequestMethod.POST)
	public ModelAndView beLoginSubmit(BeDTO dto, HttpServletRequest req, HttpServletResponse resp){
		
		ModelAndView mav = new ModelAndView();
		
		int result = beDao.BeLogin(dto);
		String msg="";
		String href="";
		
		if(result==0) { //아이디 또는 비밀번호가 맞지않음
			
			msg = "아이디 또는 비밀번호가 틀렸습니다.";
			href= "beLogin.we";
			
		}else if(result==1){	//아이디 비밀번호 모두 맞음
			
			BeDTO dto2 = beDao.loginInfo(dto.getBe_id());
			
			HttpSession session = req.getSession();
			session.setAttribute("besid", dto.getBe_id());
			session.setAttribute("besname", dto2.getBe_name());
			session.setAttribute("besort", dto2.getBe_sort());
			System.out.println(dto2.getBe_sort()+"123");
			msg = dto2.getBe_name()+"업체 로그인 되었습니다.";
			href = "beIndex.we";
			
		}
		
		mav.addObject("msg", msg);
		mav.addObject("href",href);
		mav.setViewName("be/beMsg");
		
		
		return mav;
	}
	
	@RequestMapping(value="/beJoin.we",method=RequestMethod.GET)
	public String  beJoinForm() {
		return "be/beJoin";
	}
	@RequestMapping(value="/beJoin.we",method=RequestMethod.POST)
	public ModelAndView beJoinSubmit(BeDTO dto){
		
		ModelAndView mav = new ModelAndView();
		
		int result = beDao.BeJoin(dto);
		String name = dto.getBe_name();
		String msg = result>0?
				name+"업체 등록 신청 완료! 관리자의 승인을 기다려주세요."
				:"업체등록 신청 실패! 다시 시도해주세요.";
		String href= result>0?"beLogin.we":"beJoin.we";
		
		System.out.println(msg);
		
		mav.addObject("msg", msg);
		mav.addObject("href",href);
		mav.setViewName("be/beMsg");
		
		return mav;
	}
	
	@RequestMapping(value="/beIndex.we")
	public String  beIndex() {
		return "be/beIndex";
	}
	@RequestMapping(value="/beReg.we",method=RequestMethod.GET)
	public String regItemForm() {
		return "be/regItem";
	}

	@RequestMapping(value="/regSDMY.we")
	public String regSDMY() {
		return "be/register/regSDMY";
	}
	
	@RequestMapping(value="/regSDMY.we", method=RequestMethod.POST)
	public ModelAndView fileUploadSDMY(
			@RequestParam("sdmy_be")String writer,
			@RequestParam("sdmy_img")List<MultipartFile> uploads,
			@RequestParam("be_sort")String be_sort,
			SDMYDTO dto
			) {
		
		File f = new File(fileroot+"/"+be_sort);
		File f2 = new File(fileroot+"/"+be_sort+"/"+writer);

		if(!f.exists()) {
			f.mkdir();	//업체카테고리별 디렉토리 생성
		}
		if(!f2.exists()) {	
			f2.mkdir(); //업체별 디렉토리 생성
		}
		
		writer = fileroot+"/"+be_sort+"/"+writer;	//여기서 writer 값을 디렉토리 경로명으로 변경해줌
		
		System.out.println("//////////////////////////////////////////////////////////////////////////////////////////////////////");
		System.out.println("fileeroot	:"+fileroot);
		System.out.println("be_sort		:"+be_sort);
		System.out.println("writer		:"+writer);
		System.out.println("//////////////////////////////////////////////////////////////////////////////////////////////////////");
		
		ArrayList<String> arr = new ArrayList<String>();
		String filename = "";
		
		for(MultipartFile temp:uploads) {
			copyInto(writer, temp);
			filename = writer+"/"+temp.getOriginalFilename();
			
			int tempNum = filename.indexOf("upload");
			arr.add(filename.substring(tempNum));
		}
		//////////////////////////////////////////////////////////////이미지 처리방식 업로드된 파일과 다르게 처리
		dto.setSdmy_thumbnail(arr.get(0));
		dto.setSdmy_img1(arr.get(1));
		dto.setSdmy_img2(arr.get(2));
		dto.setSdmy_img3(arr.get(3));
		dto.setSdmy_img4(arr.get(4));
		dto.setSdmy_img5(arr.get(5));
		dto.setSdmy_img6(arr.get(6));
		dto.setSdmy_img7(arr.get(7));
		dto.setSdmy_img8(arr.get(8));
		dto.setSdmy_category(be_sort);
		//////////////////////////////////////////////////////////////
		
		int result = beDao.regSDMY(dto);
		String msg = result>0?"등록신청 완료":"등록신청 실패";
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("be/beMsg");
		mav.addObject("msg", msg);
		mav.addObject("href", "beIndex.we");
		
		
		return mav;
	}
	
	/**업로드파일 복사관련메서드*/
	public void copyInto(String writer, MultipartFile upload) {
		
		String filename = upload.getOriginalFilename();
		System.out.println("경로 : "+writer+"\n 파일명 : "+filename);
		
		try {
		
			byte bytes[]=upload.getBytes();
			
			//File newfile=new File("E:/문상훈/upload/"+filename);

			File newfile=new File(writer+"/"+filename);
			FileOutputStream fos = new FileOutputStream(newfile);	//내가 지정한곳에 작성
			
			fos.write(bytes);
			fos.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	/** 상품리스트 관련 메서드*/
	@RequestMapping(value="/itemListBe.we")
	public ModelAndView itemListBe(HttpServletRequest req, HttpServletResponse resp
			) {
		
		ModelAndView mav = new ModelAndView();
		HttpSession session = req.getSession();
		String besort = (String)session.getAttribute("besort");
		String besname = (String)session.getAttribute("besname");
		
		System.out.println(besort);
		SDMYDTO sdmydto = new SDMYDTO();
		
		if(besort.equals("스튜디오")||besort.equals("드레스")||besort.equals("메이크업")||besort.equals("예복")) {
			
			List<SDMYDTO> list = beDao.beItemListSDMY(besname);
			mav.addObject("list", list);
			
		}else if(besort.equals("웨딩카")) {
			
			
		}else if(besort.equals("웨딩슈즈")) {
			
		}else if(besort.equals("부케")) {
			
		}

		
		
		mav.setViewName("be/itemListBe");
		return mav;
	}
	@RequestMapping(value="/regCar.we", method=RequestMethod.POST)
	public ModelAndView regCar(
			@RequestParam("car_be")String writer,
			@RequestParam("car_img")List<MultipartFile> uploads,
			@RequestParam("be_sort")String be_sort,
			CarDTO dto
			) {
		
		File f = new File(fileroot+"/"+be_sort);
		File f2 = new File(fileroot+"/"+be_sort+"/"+writer);
		
		if(!f.exists()) {
			f.mkdir();	//업체카테고리별 디렉토리 생성
		}
		if(!f2.exists()) {	
			f2.mkdir(); //업체별 디렉토리 생성
		}
		
		writer = fileroot+"/"+be_sort+"/"+writer;	//여기서 writer 값을 디렉토리 경로명으로 변경해줌
		
		System.out.println("//////////////////////////////////////////////////////////////////////////////////////////////////////");
		System.out.println("fileeroot	:"+fileroot);
		System.out.println("be_sort		:"+be_sort);
		System.out.println("writer		:"+writer);
		System.out.println("//////////////////////////////////////////////////////////////////////////////////////////////////////");
		
		ArrayList<String> arr = new ArrayList<String>();
		String filename = "";
		
		for(MultipartFile temp:uploads) {
			copyInto(writer, temp);
			filename = writer+"/"+temp.getOriginalFilename();
			
			int tempNum = filename.indexOf("upload");
			
			arr.add(filename.substring(tempNum));
		}
		//////////////////////////////////////////////////////////////이미지 처리방식 업로드된 파일과 다르게 처리
		dto.setCar_img(arr.get(0));
		//////////////////////////////////////////////////////////////
		
		int result = beDao.regCar(dto);
		String msg = result>0?"등록신청 완료":"등록신청 실패";
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("be/beMsg");
		mav.addObject("msg", msg);
		mav.addObject("href", "beIndex.we");
		
		return mav;
	}
	@RequestMapping(value="/regShoes.we", method=RequestMethod.POST)
	public ModelAndView regShoes(
			@RequestParam("shoes_be")String writer,
			@RequestParam("shoes_img")List<MultipartFile> uploads,
			@RequestParam("be_sort")String be_sort,
			ShoesDTO dto 
			) {
		
		File f = new File(fileroot+"/"+be_sort);
		File f2 = new File(fileroot+"/"+be_sort+"/"+writer);
		
		if(!f.exists()) {
			f.mkdir();	//업체카테고리별 디렉토리 생성
		}
		if(!f2.exists()) {	
			f2.mkdir(); //업체별 디렉토리 생성
		}
		
		writer = fileroot+"/"+be_sort+"/"+writer;	//여기서 writer 값을 디렉토리 경로명으로 변경해줌
		
		System.out.println("//////////////////////////////////////////////////////////////////////////////////////////////////////");
		System.out.println("fileeroot	:"+fileroot);
		System.out.println("be_sort		:"+be_sort);
		System.out.println("writer		:"+writer);
		System.out.println("//////////////////////////////////////////////////////////////////////////////////////////////////////");
		
		ArrayList<String> arr = new ArrayList<String>();
		String filename = "";
		
		for(MultipartFile temp:uploads) {
			copyInto(writer, temp);
			filename = writer+"/"+temp.getOriginalFilename();
			
			int tempNum = filename.indexOf("upload");
			
			arr.add(filename.substring(tempNum));
		}
		//////////////////////////////////////////////////////////////이미지 처리방식 업로드된 파일과 다르게 처리
		dto.setShoes_thumbnail(arr.get(0));
		dto.setShoes_thumbnail(arr.get(1));
		//////////////////////////////////////////////////////////////
		
		int result = beDao.regShoes(dto);
		
		String msg = result>0?"등록신청 완료":"등록신청 실패";
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("be/beMsg");
		mav.addObject("msg", msg);
		mav.addObject("href", "beIndex.we");
		
		return mav;
	}
	@RequestMapping(value="/item_detail_sdmy.we")
	public ModelAndView itemDetailSDMY(
			@RequestParam(value="be_name")String be_name
			) {
		
		SDMYDTO dto =beDao.itemDetailSDMY(be_name); 
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		
		mav.setViewName("be/itemDetailSDMY");
		return mav;
	}
}








