package com.cufflink.common;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainPage {
	
	//테스트화면
	@RequestMapping("/newfile")
	public String newfile() {
		return "common/NewFile";
	}
	
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
	//로그인성공
	@RequestMapping("/loginSuccess")
	public String loginSuccess() {
		return "auth/loginSuccess";
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
	
//*********************************	클라이언트 로그인 네비게이터 메뉴
	//프로젝트 검수중
	@RequestMapping("/projectSubmitted")
	public String projectSubmitted() {
		return "/clients/manage/project/projectSubmitted";
	}
	//프로젝트 지원자 모집중
	@RequestMapping("/projectRecruiting")
	public String projectRecruiting() {
		return "/clients/manage/projectRecruiting";
	}
	//프로젝트 진행중인 프로젝트
	@RequestMapping("/projectContractInProgress")
	public String projectContractInProgress() {
		return "/clients/manage/projectContractInProgress";
	}
	//프로젝트 종료된 프로젝트
	@RequestMapping("/projectReviewContract")
	public String projectReviewContract() {
		return "/clients/manage/projectReviewContract";
	}
//*********************************	클라이언트 로그인 네비게이터 메뉴
	
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
//*********************************	클라이언트 로그인 네비게이터 검수 하위메뉴	
	
//*********************************	클라이언트 로그인 네비게이터 검수 하위메뉴
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
//*********************************	클라이언트 로그인 네비게이터 검수 하위메뉴	
	
//*********************************	클라이언트 로그인 우측 클라이언트 정보메뉴	
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
	
//*********************************	클라이언트 로그인 우측 클라이언트 정보메뉴		
	


}
