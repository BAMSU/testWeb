package controller;

import java.io.*;
import java.util.*;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.*;

import ahall.model.FileDTO;

@Controller
public class FileManagerController {
	@RequestMapping("/fileUploadForm.we")
	public String fileUploadForm(){
		return "admin/fileUploadForm";
	}
	@RequestMapping("/fileUpload1.we")
	public String fileUpload1(
			@RequestParam("writer")String writer,
			@RequestParam("upload")MultipartFile upload){
		File f = new File("C:/Users/song/git/testWeb/src/main/webapp/img/hall/36");
		if(!f.exists()) {
			f.mkdir();	//업체카테고리별 디렉토리 생성
		}
		copyInto(writer, upload);
		return "admin/fileOk";
	}
	@RequestMapping("/fileUpload2.we")
	public String fileUpload2(MultipartHttpServletRequest req){
		String writer = req.getParameter("writer");
		MultipartFile upload= req.getFile("upload");
		copyInto(writer, upload);
		return "admin/fileOk";
	}
	@RequestMapping("/fileUpload3.we")
	public String fileUpload3(FileDTO dto){
		copyInto(dto.getWriter(), dto.getUpload());
		return "admin/fileOk";
	}
	@RequestMapping("/fileUpload4.we")
	public String fileUpload4(
			@RequestParam("writer")String writer,
			@RequestParam("upload")List<MultipartFile> uploads){
		for(MultipartFile upload : uploads){
			copyInto(writer, upload);
		}
		return "admin/fileOk";
	}
	

	public void copyInto(String writer,MultipartFile upload){
		//<img src="/finalproject/img/hall/${dto.idx}/r1.jpg">
		try {
			byte[] bytes = upload.getBytes();
			File newfile = new File("C:/Users/song/git/testWeb/src/main/webapp/img/hall/36/r1.jpg");
			FileOutputStream fos = new FileOutputStream(newfile);
			fos.write(bytes);
			fos.close();
		} catch (IOException e) {
			e.printStackTrace();
		} 
	}
	
}
