package com.cufflink.common;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class MainPage {
	Logger logger = Logger.getLogger(MainPage.class);

	@RequestMapping("/")
	public String mainpage() {
		return "common/main";
	}

	@RequestMapping(value = "/fileInsert", method = RequestMethod.POST)
	public String file(Model model, @RequestParam MultipartFile[] file) {
		// 파일에 저장하는 메소드 만들기

		for (MultipartFile f : file) {
			logger.info(f.getOriginalFilename());
			try {
				save(f);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "common/file";
	}

	String path = "C:/git/final/cufflink/WebContent/files/";

	private void save(MultipartFile f) throws IOException {
		String filename = f.getOriginalFilename();
		FileOutputStream fos = new FileOutputStream(path + filename);
		fos.write(f.getBytes());
		fos.close();
		logger.info(filename + "파일이 files 폴더에 들어갔습니다");
	}

	private void removeFile(MultipartFile f) {
		File file = new File(path + f.getOriginalFilename());
		if (file.exists()) {
			file.delete();
			logger.info("제거성공!!");
		}else {
			logger.info("파일이 존재하지 않습니다");
		}
	}
	
	@RequestMapping("/file")
	public String file() {
		logger.info("file페이지");
		return "common/file";
	}

	@RequestMapping(value="/fileRemove",method=RequestMethod.POST)
	public String file(@RequestParam MultipartFile[] file) {
		for (MultipartFile f : file) {
			removeFile(f);
		}
		return "common/file";
	}
}
