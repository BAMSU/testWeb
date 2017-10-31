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
		//�޼ҵ� ���� �� �̹� ���ε� �Ϸ� ����
		//�ش� �޼ҵ忡���� ���� ���ϴ� ��ġ�� ���縸
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
		System.out.println("�ø���:" + writer + "\n���ϸ�:" + filename);
		
		try{
		byte bytes[] = mf.getBytes();
		File newfile = new File("E:/�ۺ���/upload/"+filename);
		FileOutputStream fos = new FileOutputStream(newfile);
		fos.write(bytes);
		fos.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping("/fileDownList.do")
	public ModelAndView fileList(){
		
		File f = new File("E:/�ۺ���/upload/");
		File files[] = f.listFiles();
		
		ModelAndView mav = new ModelAndView("file/fileList", "files", files);
		return mav;
	}
	
	@RequestMapping("/down.do")
	public ModelAndView fileDown(@RequestParam("filename")String filename) {
		
		File downfile = new File("E:/�ۺ���/upload/"+filename);
		ModelAndView mav = new ModelAndView("yongdown", "downloadFile", downfile);
		return mav;
	}

}
