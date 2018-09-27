package com.cufflink.common;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/common")
public class CommonController {
	
	@Autowired //commonLogic과 연동을 위한 Serviec등록
	
	CommonLogic commonLogic;
	
	//메인화면 설정
	@RequestMapping("/")
	public String Indexpage(Model m) {
		//commonLogic에서 map()메소드의 값을 가져온다.
		m.addAttribute("get",commonLogic.map());
		return "common/main";
	}
}
