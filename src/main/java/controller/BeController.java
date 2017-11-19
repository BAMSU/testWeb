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
import be.model.BouqDTO;
import be.model.CarDTO;
import be.model.SDMYDTO;
import be.model.ShoesDTO;

@Controller
public class BeController {
	
	private String fileroot = "C:/Users/LG/git/testWeb/src/main/webapp/upload";
	
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
		String msg = "�α׾ƿ��Ǿ����ϴ�.";
		mav.addObject("msg",msg);
		mav.setViewName("be/beLogin");
		
		return mav;
	}
	@RequestMapping(value="/beLogin.we",method=RequestMethod.POST)
	public ModelAndView beLoginSubmit(BeDTO dto, HttpServletRequest req, HttpServletResponse resp){
		
		ModelAndView mav = new ModelAndView();
		
		if(dto.getBe_id().equals("")||dto.getBe_id()==null||dto.getBe_pwd().equals("")||dto.getBe_pwd()==null) {
			dto.setBe_id("1");
			dto.setBe_pwd("1");
		}
		
		int result = beDao.BeLogin(dto);
		
		String msg="";
		String href="";
		
		if(result==0) { //���̵� �Ǵ� ��й�ȣ�� ��������
			
			msg = "���̵� �Ǵ� ��й�ȣ�� Ʋ�Ƚ��ϴ�.";
			href= "beLogin.we";
			
		}else if(result==1){	//���̵� ��й�ȣ ��� ����
			
			BeDTO dto2 = beDao.loginInfo(dto.getBe_id());
			
			HttpSession session = req.getSession();
			session.setAttribute("besid", dto.getBe_id());
			session.setAttribute("besname", dto2.getBe_name());
			session.setAttribute("besort", dto2.getBe_sort());
			System.out.println(dto2.getBe_sort()+"123");
			msg = dto2.getBe_name()+"��ü �α��� �Ǿ����ϴ�.";
			href = "beIndex.we";
			
		}else {
			msg = "���̵� �Ǵ� ��й�ȣ�� Ʋ�Ƚ��ϴ�.";
			href= "beLogin.we";
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
				name+"��ü ��� ��û �Ϸ�! �������� ������ ��ٷ��ּ���."
				:"��ü��� ��û ����! �ٽ� �õ����ּ���.";
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
		return "be/register/regItem";
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
			f.mkdir();	//��üī�װ��� ���丮 ����
		}
		if(!f2.exists()) {	
			f2.mkdir(); //��ü�� ���丮 ����
		}
		
		writer = fileroot+"/"+be_sort+"/"+writer;	//���⼭ writer ���� ���丮 ��θ����� ��������
		
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
		//////////////////////////////////////////////////////////////�̹��� ó����� ���ε�� ���ϰ� �ٸ��� ó��
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
		String msg = result>0?"��Ͻ�û �Ϸ�":"��Ͻ�û ����";
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("be/beMsg");
		mav.addObject("msg", msg);
		mav.addObject("href", "beIndex.we");
		
		
		return mav;
	}
	
	/**���ε����� ������ø޼���*/
	public void copyInto(String writer, MultipartFile upload) {
		
		String filename = upload.getOriginalFilename();
		System.out.println("��� : "+writer+"\n ���ϸ� : "+filename);
		
		try {
		
			byte bytes[]=upload.getBytes();
			
			//File newfile=new File("E:/������/upload/"+filename);

			File newfile=new File(writer+"/"+filename);
			FileOutputStream fos = new FileOutputStream(newfile);	//���� �����Ѱ��� �ۼ�
			
			fos.write(bytes);
			fos.close();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/regCar.we", method=RequestMethod.POST)
	public ModelAndView regCar(
			@RequestParam("car_be")String writer,
			@RequestParam("car_imgs")List<MultipartFile> uploads,
			@RequestParam("be_sort")String be_sort,
			CarDTO dto
			) {
		
		File f = new File(fileroot+"/"+be_sort);
		File f2 = new File(fileroot+"/"+be_sort+"/"+writer);
		
		if(!f.exists()) {
			f.mkdir();	//��üī�װ��� ���丮 ����
		}
		if(!f2.exists()) {	
			f2.mkdir(); //��ü�� ���丮 ����
		}
		
		writer = fileroot+"/"+be_sort+"/"+writer;	//���⼭ writer ���� ���丮 ��θ����� ��������
		
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
		//////////////////////////////////////////////////////////////�̹��� ó����� ���ε�� ���ϰ� �ٸ��� ó��
		dto.setCar_img(arr.get(0));
		//////////////////////////////////////////////////////////////
		
		int result = beDao.regCar(dto);
		String msg = result>0?"��Ͻ�û �Ϸ�":"��Ͻ�û ����";
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("be/beMsg");
		mav.addObject("msg", msg);
		mav.addObject("href", "beIndex.we");
		
		return mav;
	}
	@RequestMapping(value="/regShoes.we", method=RequestMethod.POST)
	public ModelAndView regShoes(
			@RequestParam("shoes_be")String writer,
			@RequestParam("shoes_imgs")List<MultipartFile> uploads,
			@RequestParam("be_sort")String be_sort,
			ShoesDTO dto 
			) {
		
		File f = new File(fileroot+"/"+be_sort);
		File f2 = new File(fileroot+"/"+be_sort+"/"+writer);
		
		if(!f.exists()) {
			f.mkdir();	//��üī�װ��� ���丮 ����
		}
		if(!f2.exists()) {	
			f2.mkdir(); //��ü�� ���丮 ����
		}
		
		writer = fileroot+"/"+be_sort+"/"+writer;	//���⼭ writer ���� ���丮 ��θ����� ��������
		
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
		//////////////////////////////////////////////////////////////�̹��� ó����� ���ε�� ���ϰ� �ٸ��� ó��
		dto.setShoes_thumbnail(arr.get(0));
		dto.setShoes_img(arr.get(1));
		//////////////////////////////////////////////////////////////
		
		int result = beDao.regShoes(dto);
		
		String msg = result>0?"��Ͻ�û �Ϸ�":"��Ͻ�û ����";
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("be/beMsg");
		mav.addObject("msg", msg);
		mav.addObject("href", "beIndex.we");
		
		return mav;
	}
	@RequestMapping(value="/regBouq.we", method=RequestMethod.POST)
	public ModelAndView regBouq(
			@RequestParam("bouq_be")String writer,
			@RequestParam("bouq_imgs")List<MultipartFile> uploads,
			@RequestParam("be_sort")String be_sort,
			BouqDTO dto
			) {
		
		File f = new File(fileroot+"/"+be_sort);
		File f2 = new File(fileroot+"/"+be_sort+"/"+writer);
		
		if(!f.exists()) {
			f.mkdir();	//��üī�װ��� ���丮 ����
		}
		if(!f2.exists()) {	
			f2.mkdir(); //��ü�� ���丮 ����
		}
		
		writer = fileroot+"/"+be_sort+"/"+writer;	//���⼭ writer ���� ���丮 ��θ����� ��������
		
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
		//////////////////////////////////////////////////////////////�̹��� ó����� ���ε�� ���ϰ� �ٸ��� ó��
		dto.setBouq_thumbnail(arr.get(0));
		//////////////////////////////////////////////////////////////
		
		int result = beDao.regBouq(dto);
		String msg = result>0?"��Ͻ�û �Ϸ�":"��Ͻ�û ����";
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("be/beMsg");
		mav.addObject("msg", msg);
		mav.addObject("href", "beIndex.we");
		
		return mav;
	}

	/** ��ǰ����Ʈ ���� �޼���*/
	@RequestMapping(value="/itemListBe.we")
	public ModelAndView itemListBe(HttpServletRequest req, HttpServletResponse resp
			) {
		
		ModelAndView mav = new ModelAndView();
		HttpSession session = req.getSession();
		String besort = (String)session.getAttribute("besort");
		String besname = (String)session.getAttribute("besname");
		
		if(besort.equals("��Ʃ���")||besort.equals("�巹��")||besort.equals("����ũ��")||besort.equals("����")) {
			
			List<SDMYDTO> list = beDao.beItemListSDMY(besname);
			mav.addObject("list", list);
			
		}else if(besort.equals("����ī")) {
			
			List<CarDTO> list = beDao.beItemListCar(besname);
			mav.addObject("list",list);
			
		}else if(besort.equals("��������")) {
			
			List<ShoesDTO> list = beDao.beItemListShoes(besname);
			mav.addObject("list",list);
			
		}else if(besort.equals("����")) {
			
			List<BouqDTO> list = beDao.beItemListBouq(besname);
			mav.addObject("list",list);
			
		}
		
		mav.setViewName("be/itemListBe");
		return mav;
	}
	
	@RequestMapping(value="/item_detail_sdmy.we")
	public ModelAndView beItemDetailSDMY(
			@RequestParam(value="be_name")String be_name
			) {
		ModelAndView mav = new ModelAndView();
		
		SDMYDTO dto =beDao.itemDetailSDMY(be_name); 
		BeDTO bdto = beDao.itemDetailBe(be_name);
		System.out.println("test:"+bdto.getBe_loc());

		mav.addObject("bdto", bdto);
		mav.addObject("dto", dto);
		
		mav.setViewName("be/beItemDetailSDMY");
		return mav;
	}
	@RequestMapping(value="/item_detail_car.we")
	public ModelAndView beItemDetailCar(
			@RequestParam(value="car_idx")String car_idx
			) {
		
		CarDTO dto =beDao.itemDetailCar(car_idx); 
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		
		mav.setViewName("be/beItemDetailCar");
		return mav;
	}
	@RequestMapping(value="/item_detail_shoes.we")
	public ModelAndView beItemDetailShoes(
			@RequestParam(value="shoes_idx")String shoes_idx
			) {
		
		ShoesDTO dto =beDao.itemDetailShoes(shoes_idx); 
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		
		mav.setViewName("be/beItemDetailShoes");
		return mav;
	}
	@RequestMapping(value="/item_detail_bouq.we")
	public ModelAndView beItemDetailBouq(
			@RequestParam(value="bouq_idx")String bouq_idx
			) {
		
		BouqDTO dto =beDao.itemDetailBouq(bouq_idx); 
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		
		mav.setViewName("be/beItemDetailBouq");
		return mav;
	}
	@RequestMapping(value="/delItem.we")
	public ModelAndView delItem(
			@RequestParam(value="besort")String besort,
			@RequestParam(value="idx")String idx
			) {
		ModelAndView mav = new ModelAndView();
		
		String tableName="";
		String columName="";
		
		if(besort.equals("��Ʃ���")||besort.equals("�巹��")||besort.equals("����ũ��")||besort.equals("����")) {
			tableName = "be_sdmy";
			columName = "sdmy_idx";
		}else if(besort.equals("����ī")) {
			tableName = "be_car";
			columName = "car_idx";
		}else if(besort.equals("��������")) {
			tableName = "be_shoes";
			columName = "shoes_idx";
		}else if(besort.equals("����")) {
			tableName = "be_bouquet";
			columName = "bouq_idx";
		}
		
		int result = beDao.delItem(columName, idx, tableName);
		String msg=result>0?"�����Ϸ�":"��������!";
		
		mav.addObject("href","itemListBe.we");
		mav.addObject("msg",msg);
		mav.setViewName("be/beMsg");
		
		return mav;
	}
	
	@RequestMapping(value="nCarList.we")
	public ModelAndView nCarList(
			@RequestParam(value="be_name")String be_name
			) {
		ModelAndView mav = new ModelAndView();
		
		List<CarDTO> list = beDao.nItemListCar(be_name); 
		mav.addObject("list",list);
		mav.setViewName("be/nItemList");
		
		return mav;
	}
	@RequestMapping(value="nShoesList.we")
	public ModelAndView nShoesList(
			@RequestParam(value="be_name")String be_name
			) {
		ModelAndView mav = new ModelAndView();
		
		List<ShoesDTO> list = beDao.nItemListShoes(be_name); 
		mav.addObject("list",list);
		mav.setViewName("be/nItemList");
		
		return mav;
	}
	@RequestMapping(value="nBouqList.we")
	public ModelAndView nBouqList(
			@RequestParam(value="be_name")String be_name
			) {
		ModelAndView mav = new ModelAndView();
		
		List<BouqDTO> list = beDao.nItemListBouq(be_name);
		mav.addObject("list",list);
		mav.setViewName("be/nItemList");
		
		return mav;
	}
	@RequestMapping(value="nSDMYList.we")
	public ModelAndView nSDMYList(
			@RequestParam(value="be_name")String be_name
			) {
		ModelAndView mav = new ModelAndView();
		
		List<SDMYDTO> list = beDao.nItemListSDMY(be_name);
		mav.addObject("list",list);
		mav.setViewName("be/nItemList");
		
		return mav;
	}
	
	@RequestMapping(value="/itemUpdateSDMY.we", method=RequestMethod.GET)
	public ModelAndView itemUpdateSDMYForm(
			@RequestParam(value="sdmy_be")String sdmy_be
			) {
		SDMYDTO dto =beDao.itemDetailSDMY(sdmy_be); 
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		
		mav.setViewName("be/itemUpdateSDMY");
		return mav;
	}
	@RequestMapping(value="/itemUpdateCar.we", method=RequestMethod.GET)
	public ModelAndView itemUpdateCarForm(
			@RequestParam(value="idx")String car_idx
			) {
		CarDTO dto =beDao.itemDetailCar(car_idx); 
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		
		mav.setViewName("be/itemUpdateCar");
		return mav;
	}
	@RequestMapping(value="/itemUpdateShoes.we", method=RequestMethod.GET)
	public ModelAndView itemUpdateShoesForm(
			@RequestParam(value="idx")String shoes_idx
			) {
		ShoesDTO dto =beDao.itemDetailShoes(shoes_idx); 
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		
		mav.setViewName("be/itemUpdateShoes");
		return mav;
	}
	@RequestMapping(value="/itemUpdateBouq.we", method=RequestMethod.GET)
	public ModelAndView itemUpdateBouqForm(
			@RequestParam(value="idx")String bouq_idx
			) {
		BouqDTO dto =beDao.itemDetailBouq(bouq_idx); 
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("dto", dto);
		
		mav.setViewName("be/itemUpdateBouq");
		return mav;
	}
	// METHOD ABOUT UPDATE
	
	@RequestMapping(value="/itemUpdateSDMY.we", method=RequestMethod.POST)
	public ModelAndView itemUpdateSDMYSubmit(
			@RequestParam(value="sdmy_be")String sdmy_be,
			SDMYDTO dto
			) {
		
		ModelAndView mav = new ModelAndView();
		int result = beDao.updateSDMY(dto);
		String msg = result>0?"���� ����!":"���� ����";
		String href = result>0?"beIndex.we":"beIndex.we";
		
		mav.addObject("msg", msg);
		mav.addObject("href", href);
		mav.setViewName("be/beMsg");
		return mav;
	}
	@RequestMapping(value="/itemUpdateCar.we", method=RequestMethod.POST)
	public ModelAndView itemUpdateCarSubmit(
			CarDTO dto
			) {
		
		ModelAndView mav = new ModelAndView();
		int result = beDao.updateCar(dto);
		String msg = result>0?"���� ����!":"���� ����";
		String href = result>0?"beIndex.we":"beIndex.we";
		
		mav.addObject("msg", msg);
		mav.addObject("href", href);
		mav.setViewName("be/beMsg");
		return mav;
	}
	@RequestMapping(value="/itemUpdateShoes.we", method=RequestMethod.POST)
	public ModelAndView itemUpdateShoesSubmit(
			ShoesDTO dto
			) {
		
		ModelAndView mav = new ModelAndView();
		int result = beDao.updateShoes(dto);
		String msg = result>0?"���� ����!":"���� ����";
		String href = result>0?"beIndex.we":"beIndex.we";
		
		mav.addObject("msg", msg);
		mav.addObject("href", href);
		mav.setViewName("be/beMsg");
		return mav;
	}
	@RequestMapping(value="/itemUpdateBouq.we", method=RequestMethod.POST)
	public ModelAndView itemUpdateBouqSubmit(
			BouqDTO dto
			) {
		
		ModelAndView mav = new ModelAndView();
		int result = beDao.updateBouq(dto);
		String msg = result>0?"���� ����!":"���� ����";
		String href = result>0?"beIndex.we":"beIndex.we";
		
		mav.addObject("msg", msg);
		mav.addObject("href", href);
		mav.setViewName("be/beMsg");
		return mav;
	}
	@RequestMapping(value="/itemList.we")
	public ModelAndView itemList(
			@RequestParam(value="category",defaultValue="car")String category,
			@RequestParam(value="cp", defaultValue="1")int cp
			) {
		ModelAndView mav = new ModelAndView();
		int listSize = 9;
		int pageSize = 5;
		int totalCnt= 0;
		
		String pageStr="";
		if(category.equals("studio")||category.equals("��Ʃ���")) {
			category="��Ʃ���";
			totalCnt = beDao.getStudioTotalCnt();
			pageStr = yong.page.BeItemPageModule.makePage("itemList.we", totalCnt, listSize, pageSize, cp,category);
			
			List<SDMYDTO> list = beDao.ItemListStudio(category, cp, listSize);
			mav.addObject("sdmyList",list);
			
			
		}else if(category.equals("dress")||category.equals("�巹��")) {
			category="�巹��";
			totalCnt = beDao.getDressTotalCnt();
			pageStr = yong.page.BeItemPageModule.makePage("itemList.we", totalCnt, listSize, pageSize, cp,category);
			
			List<SDMYDTO> list = beDao.ItemListDress(category,cp,listSize);
			mav.addObject("sdmyList",list);
			
		}else if(category.equals("makeup")||category.equals("����ũ��")) {
			category="����ũ��";
			totalCnt = beDao.getMakeupTotalCnt();
			pageStr = yong.page.BeItemPageModule.makePage("itemList.we", totalCnt, listSize, pageSize, cp,category);
			
			List<SDMYDTO> list = beDao.ItemListMakeup(category,cp,listSize);
			mav.addObject("sdmyList",list);
			
		}else if(category.equals("suit")||category.equals("����")) {
			category="����";
			totalCnt = beDao.getSuitTotalCnt();
			pageStr = yong.page.BeItemPageModule.makePage("itemList.we", totalCnt, listSize, pageSize, cp,category);
			
			List<SDMYDTO> list = beDao.ItemListSuit(category,cp,listSize);
			mav.addObject("sdmyList",list);
			
		}else if(category.equals("car")) {
			totalCnt = beDao.getCarTotalCnt();
			pageStr = yong.page.BeItemPageModule.makePage("itemList.we", totalCnt, listSize, pageSize, cp, category);
			
			List<CarDTO> list = beDao.ItemListCar(cp,listSize);
			mav.addObject("list",list);
			
		}else if(category.equals("shoes")) {
			
			totalCnt = beDao.getShoesTotalCnt();
			pageStr = yong.page.BeItemPageModule.makePage("itemList.we", totalCnt, listSize, pageSize, cp, category);
			
			List<ShoesDTO> list = beDao.ItemListShoes(cp,listSize);
			mav.addObject("list",list);
			
		}else if(category.equals("bouq")) {
			totalCnt = beDao.getBouqTotalCnt();
			pageStr = yong.page.BeItemPageModule.makePage("itemList.we", totalCnt, listSize, pageSize, cp, category);
			
			List<BouqDTO> list = beDao.ItemListBouq(cp,listSize);
			mav.addObject("list",list);
		}
		
		mav.addObject("pageStr",pageStr);
		mav.addObject("category",category);
		mav.setViewName("be/itemList");
		
		return mav;
	}
	
	@RequestMapping(value="/showItemSDMY.we")
	public ModelAndView showItemDetailSDMY(
			@RequestParam(value="sdmy_be")String sdmy_be
			) {
		ModelAndView mav = new ModelAndView();
		SDMYDTO dto = beDao.itemDetailSDMY(sdmy_be);
		beDao.sdmyReadNum(sdmy_be);
		
		BeDTO bdto = beDao.itemDetailBe(sdmy_be);
		System.out.println("��ü ������:"+bdto.getBe_loc());

		mav.addObject("bdto", bdto);
		
		mav.addObject("dto",dto);
		mav.setViewName("be/itemDetailSDMY");
		
		return mav;
	}
	@RequestMapping(value="/showItemCar.we")
	public ModelAndView showItemDetailCar(
			@RequestParam(value="car_idx")String car_idx
			) {
		ModelAndView mav = new ModelAndView();
		CarDTO dto = beDao.itemDetailCar(car_idx);
		dto.setCar_detail(dto.getCar_detail().replaceAll("\r", "<br>"));
		
		beDao.carReadNum(car_idx);
		
		BeDTO bdto = beDao.itemDetailBe(dto.getCar_be());
		System.out.println("��ü ������:"+bdto.getBe_loc());

		mav.addObject("bdto", bdto);
		mav.addObject("dto",dto);
		mav.setViewName("be/itemDetailCar");
		
		return mav;
	}
	@RequestMapping(value="/showItemShoes.we")
	public ModelAndView showItemDetailShoes(
			@RequestParam(value="shoes_idx")String shoes_idx
			) {
		ModelAndView mav = new ModelAndView();
		ShoesDTO dto = beDao.itemDetailShoes(shoes_idx);
		dto.setShoes_detail(dto.getShoes_detail().replaceAll("\r", "<br>"));
		beDao.shoesReadNum(shoes_idx);
		
		BeDTO bdto = beDao.itemDetailBe(dto.getShoes_be());
		System.out.println("��ü ������:"+bdto.getBe_loc());

		mav.addObject("bdto", bdto);
		mav.addObject("dto",dto);
		mav.setViewName("be/itemDetailShoes");
		
		return mav;
	}
	@RequestMapping(value="/showItemBouq.we")
	public ModelAndView showItemDetailBouq(
			@RequestParam(value="bouq_idx")String bouq_idx
			) {
		ModelAndView mav = new ModelAndView();
		BouqDTO dto = beDao.itemDetailBouq(bouq_idx);
		dto.setBouq_simple(dto.getBouq_simple().replaceAll("\r", "<br>"));
		
		beDao.bouqReadNum(bouq_idx);
		
		BeDTO bdto = beDao.itemDetailBe(dto.getBouq_be());
		System.out.println("��ü ������:"+bdto.getBe_loc());
		
		
		
		mav.addObject("bdto", bdto);
		mav.addObject("dto",dto);
		mav.setViewName("be/itemDetailBouq");
		
		return mav;
	}
	
	
	
	
}








