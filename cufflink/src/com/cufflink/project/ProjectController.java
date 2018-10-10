package com.cufflink.project;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProjectController {
   Logger logger = Logger.getLogger(ProjectController.class);
      @Autowired
      ProjectLogic projectLogic;
      
      @RequestMapping("/Project/page")
      public String getProjectFind(Model mod, @RequestParam("pagenum") String pagenum, Map<String, Object> pMap) {
         logger.info("ProjectFind 호출성공");
         
         mod.addAttribute("ProjectFind1", projectLogic.getProjectFind1());
         mod.addAttribute("ProjectFind2", projectLogic.getProjectFind2()); 
         mod.addAttribute("ProjectCate_ALL", projectLogic.getProject_cateALL());
         mod.addAttribute("Projectseach", projectLogic.getProjectseach());
         mod.addAttribute("getAll", projectLogic.getProAll(Integer.parseInt(pagenum))); 
         
          
         mod.addAttribute("Project", projectLogic.Project(pMap));
         
         
         return "Project/ProjectFind";
      }
      

      
      //프로젝트 검수중
      @RequestMapping("/project/projectSubmitted")
      public String projectSubmitted() {
         return "/clients/manage/project/projectSubmitted";
      }
      //프로젝트 임시저장
      @RequestMapping("/project/projectSaved")
      public String projectSaved() {
         return "/clients/manage/project/projectSaved";
      }
      //프로젝트 등록실패
      @RequestMapping("/project/projectRejected")
      public String projectRejected() {
         return "/clients/manage/project/projectRejected";
      }
      
         
      //*********************************   클라이언트 로그인 네비게이터 메뉴
      
      
      //프로젝트 지원자 모집중
      @RequestMapping("/project/projectRecruiting")
      public String projectRecruiting() {
         return "/clients/manage/projectRecruiting";
      }
      //프로젝트 진행중인 프로젝트
      @RequestMapping("/project/projectContractInProgress")
      public String projectContractInProgress() {
         return "/clients/manage/projectContractInProgress";
      }
      //프로젝트 평가대기중 프로젝트
      @RequestMapping("/project/projectReviewContract")
      public String projectReviewContract() {
         return "/clients/manage/projectReviewContract";
      }
      
      //프로젝트 완료된 프로젝트
      @RequestMapping("/project/projectCompletedContract")
      public String projectCompletedContract() {
         return "/clients/manage/projectCompletedContract";
      }
      //프로젝트 취소한 프로젝트
      @RequestMapping("/project/projectCancelledProject")
      public String projectCancelledProject() {
         return "/clients/manage/projectCancelledProject";
      }



}