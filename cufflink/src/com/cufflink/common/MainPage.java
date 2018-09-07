package com.cufflink.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPage {
	//메인화면
	@RequestMapping("/")
	public String mainpage() {
		return "common/main";
	}

	//로그인
	@RequestMapping("/login")
	public String login() {
		return "auth/login";
	}
	//회원가입
	@RequestMapping("/join")
	public String join() {
		return "auth/join";
	}
	//프로젝트 찾기
	@RequestMapping("/projectFind")
	public String projectFind() {
		return "clients/projectFind";
	}
	//프로젝트 등록
	@RequestMapping("/projectRegister")
	public String projectRegister() {
		return "clients/projectRegister";
	}
	//파트너스 목록
		@RequestMapping("/partnersList")
		public String partnersList() {
			return "partners/partnersList";
	}
}
