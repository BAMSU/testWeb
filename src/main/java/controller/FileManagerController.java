package controller;

import java.io.*;
import java.util.*;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;
import org.springframework.web.servlet.ModelAndView;

import ahall.model.FileDTO;

@Controller
public class FileManagerController {
	@RequestMapping("/fileUploadForm.we")
	public ModelAndView fileUploadForm(int idx){
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("idx", idx);
		mav.setViewName("admin/fileUploadForm");
		return mav;
	}
	@RequestMapping("/fileUpload1.we")
	public ModelAndView fileUpload1(
			@RequestParam("upload")MultipartFile upload, int idx, String what){
		File f = new File("C:/Users/song/git/testWeb/src/main/webapp/img/hall/"+idx);
		if(!f.exists()) {
			f.mkdir();
		}
		copyInto(upload, idx, what);
		ModelAndView mav = new ModelAndView();
		mav.addObject("idx", idx);
		mav.addObject("msg", "파일 업로드 성공!");
		mav.addObject("gourl", "wdList.we");
		mav.setViewName("admin/fqMsg");
		return mav;
	}
	

	public void copyInto(MultipartFile upload, int idx, String what){
		//<img src="/finalproject/img/hall/${dto.idx}/r1.jpg">
		try {
			byte[] bytes = upload.getBytes();
			File newfile = new File("C:/Users/song/git/testWeb/src/main/webapp/img/hall/"+idx+what);
			FileOutputStream fos = new FileOutputStream(newfile);
			fos.write(bytes);
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
		} 
	}
	
}
