package yong.controller;

import java.io.*;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import yong.file.model.FileDTO;

@Controller
public class FileManagerController {
	
	@RequestMapping("/fileUploadForm.do")
	public String fileUploadForm() {
		return "file/fileUploadForm";
	}
	
	@RequestMapping("/fileUpload1.do")
	public String fileUpload1(@RequestParam("writer")String writer, @RequestParam("upload")MultipartFile mf) {
		//메소드 진입 전 이미 업로드 완료 상태
		//해당 메소드에서는 내가 원하는 위치로 복사만
		copyInto(writer, mf);
		return "file/fileOk";
	}
	
	@RequestMapping("/fileUpload2.do")
	public String fileUpload2(MultipartHttpServletRequest req) {
		String writer = req.getParameter("writer");
		MultipartFile mf=req.getFile("upload");
		copyInto(writer, mf);
		return "file/fileOk";
	}
	
	@RequestMapping("/fileUpload3.do")
	public String fileUpload3(FileDTO dto) {
		copyInto(dto.getWriter(), dto.getUpload());
		return "file/fileOk";
	}
	
	@RequestMapping("/fileUpload4.do")
	public String fileUpload4(@RequestParam("writer")String writer, @RequestParam("upload")List<MultipartFile> mf) {
		
		for(MultipartFile temp:mf) {
			copyInto(writer, temp);
		}
		return "file/fileOk";
	}
	
	public void copyInto(String writer, MultipartFile mf){
		String filename=mf.getOriginalFilename();
		System.out.println("올린이:" + writer + "\n파일명:" + filename);
		
		try{
		byte bytes[] = mf.getBytes();
		File newfile = new File("E:/송병훈/upload/"+filename);
		FileOutputStream fos = new FileOutputStream(newfile);
		fos.write(bytes);
		fos.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/fileDownList.do")
	public ModelAndView fileList(){
		
		File f = new File("E:/송병훈/upload/");
		File files[] = f.listFiles();
		
		ModelAndView mav = new ModelAndView("file/fileList", "files", files);
		return mav;
	}
	
	@RequestMapping("/down.do")
	public ModelAndView fileDown(@RequestParam("filename")String filename) {
		
		File downfile = new File("E:/송병훈/upload/"+filename);
		ModelAndView mav = new ModelAndView("yongdown", "downloadFile", downfile);
		return mav;
	}

}
