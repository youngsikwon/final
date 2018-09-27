package com.cufflink.project;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/project")
public class ProjectController {
	
	//@Autowired
	ProjectLogic projectLogic;

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
}
