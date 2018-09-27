package com.cufflink.client;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/clients")
public class ClientController {
	
	//@Autowired
	ClientLogic clientLogic;
	

	//*********************************	클라이언트 로그인 네비게이터 검수 하위메뉴
	
	//프로젝트 검수중
	//네비게이터의 검수중메뉴와 동일
	
	//프로젝트 임시저장
	@RequestMapping("/projectSaved")
	public String projectSaved() {
		return "/clients/manage/project/projectSaved";
	}
	//프로젝트 등록실패
	@RequestMapping("/projectRejected")
	public String projectRejected() {
		return "/clients/manage/project/projectRejected";
	}
	
	//프로젝트 종료된 프로젝트
	//네비게이터의 종료된 프로젝트 메뉴와 동일
	
	//프로젝트 완료된 프로젝트
	@RequestMapping("/projectCompletedContract")
	public String projectCompletedContract() {
		return "/clients/manage/projectCompletedContract";
	}
	//프로젝트 취소한 프로젝트
	@RequestMapping("/projectCancelledProject")
	public String projectCancelledProject() {
		return "/clients/manage/projectCancelledProject";
	}
	
	//*********************************	클라이언트 로그인 우측 클라이언트 정보메뉴	

	//마이 커프링크
	@RequestMapping("/ClientMyCufflink")
	public String ClientMyCufflink() {
		return "/clients/ClientMyCufflink";
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
	
	//---------------------------------------
	//프로젝트 클라이언트 정보
	@RequestMapping("/ClientInfo")
	public String ClientInfo() {
		return "/clients/info/ClientInfo";
	}
	//프로젝트 클라이언트 정보등록
	@RequestMapping("/ClientInfoUpdate")
	public String ClientInfoUpdate() {
		return "/clients/info/ClientInfoUpdate";
	}
	//프로젝트 프로젝트 히스토리
	@RequestMapping("/ClientProjectHistory")
	public String ClientProjectHistory() {
		return "/clients/ClientProjectHistory";
	}	
	
}
