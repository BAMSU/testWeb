package controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sun.xml.internal.ws.config.management.policy.ManagementPolicyValidator;

import ahall.model.aHallDAO;
import ahall.model.aHallDTO;


@Controller
public class WdController {
	
	
	private String fileroot = "E:/jspstudy/myweb5/src/main/webapp/img/hall/";
	
	@Autowired
	private aHallDAO dao;
	
	@RequestMapping("/insertWd.we")
	public String adminForm() {
		return "wd/insertWd";
	}
	
	@RequestMapping("/insertWd2.we")
	public ModelAndView adminAction(aHallDTO dto) {
		ModelAndView mav = new ModelAndView();
		int result = dao.insertWd(dto);
		
		if(result>0) {
			mav.addObject("msg", "��� ����!");
			mav.addObject("gourl", "wdList.we");
			
		} else {
			mav.addObject("msg", "��� ����!");
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
			mav.addObject("msg", "���� ����!");
			mav.addObject("gourl", "wdList.we");
			
		} else {
			mav.addObject("msg", "���� ����!");
			mav.addObject("gourl", "wdList.we");
		}
		mav.setViewName("wd/wdMsg");
		return mav;
	}
	
	@RequestMapping("/deleteWd.we")
	public ModelAndView deleteWd(int idx) {
		ModelAndView mav = new ModelAndView();
		int result = dao.deleteWd(idx);
		
		if(result>0) {
			mav.addObject("msg", "���� ����!");
			mav.addObject("gourl", "wdList.we");
			
		} else {
			mav.addObject("msg", "���� ����!");
			mav.addObject("gourl", "wdList.we");
		}
		mav.setViewName("wd/wdMsg");
		return mav;
	}
	
	@RequestMapping("/image.we")
	public ModelAndView image(int idx) {
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("hallImage/addImage");
		return mav;
	}
	
	/*@RequestMapping(value="/regSDMY.we", method=RequestMethod.POST)
	public ModelAndView fileUploadSDMY(
			@RequestParam("sdmy_img")List<MultipartFile> uploads, int idx
			) {
		
		File f = new File(fileroot + idx);

		if(!f.exists()) {
			f.mkdir();	//��üī�װ��� ���丮 ����
		}
		
		ArrayList<String> arr = new ArrayList<String>();
		
		for(MultipartFile temp:uploads) {
			copyInto(writer, temp);
			filename = writer+"/"+temp.getOriginalFilename();
			
			int tempNum = filename.indexOf("upload");
			arr.add(filename.substring(tempNum));
		}
		//////////////////////////////////////////////////////////////�̹��� ó����� ���ε�� ���ϰ� �ٸ��� ó��
		dto.setSdmy_img1(arr.get(1));
		dto.setSdmy_img2(arr.get(2));
		dto.setSdmy_img3(arr.get(3));
		dto.setSdmy_img4(arr.get(4));
		dto.setSdmy_img5(arr.get(5));
		dto.setSdmy_img6(arr.get(6));
		dto.setSdmy_img7(arr.get(7));
		dto.setSdmy_img8(arr.get(8));
		//////////////////////////////////////////////////////////////
		
		int result = beDao.regSDMY(dto);
		String msg = result>0?"��Ͻ�û �Ϸ�":"��Ͻ�û ����";
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("be/beMsg");
		mav.addObject("msg", msg);
		mav.addObject("href", "beIndex.we");
		
		
		return mav;
}
	*/
	
	
}