package com.cufflink.project;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectLogic {
	Logger logger = Logger.getLogger(this.getClass());

	@Autowired
	ProjectDao projectDao;

	List<Map<String, Object>> list;
	Map<String, Map> map;
	int result;


	public Map<String,Map> Project(Map<String, Object> pMap){
		logger.info("Project 호출성공");
		map = projectDao.Project_1(pMap);
		logger.info(map);
		return map;
	}

	public List<Map<String, Object>> getProjectFind1() {
		logger.info("ProjectFind 호출성공");
		List<String> ProjectFind = new ArrayList<>();
		List<Map<String, Object>> list = projectDao.getProjectFind1();
		for (Map<String, Object> map : list) {
			ProjectFind.add((String) map.get("CATE_SUB"));
		}
		return list;
	}
	public List<Map<String, Object>> P_Enrollment() {
		logger.info("P_Enrollment 호출성공");
		List<String> ProjectFind = new ArrayList<>();
		List<Map<String, Object>> list = projectDao.getProjectFind1();
		for (Map<String, Object> map : list) {
			ProjectFind.add((String) map.get("P_NO"));
		}
		return list;
	}


	public List<Map<String, Object>> getProjectFind2() {
		logger.info("ProjectFind 호출성공");
		List<String> ProjectFind = new ArrayList<>();
		List<Map<String, Object>> list = projectDao.getProjectFind2();
		for (Map<String, Object> map : list) {
			ProjectFind.add((String) map.get("CATE_SUB"));
		}
		return list;
	}


	public List<Map<String, Object>> getProject_cateALL() {
		logger.info("getProject_cateALL 호출성공");
		List<String> ProjectFind = new ArrayList<>();
		List<Map<String, Object>> list = projectDao.getProject_CATE();
		for (Map<String, Object> map : list) {
			ProjectFind.add((String) map.get("CATE_MAIN"));
		}
		return list;
	}

	public List<Map<String, Object>> getProjectseach() {
		logger.info("getProject_cateALL 호출성공");
		List<String> ProjectFind = new ArrayList<>();
		List<Map<String, Object>> list = projectDao.getProjectseach();
		for (Map<String, Object> map : list) {
			ProjectFind.add((String) map.get("PRO_NAME"));
		}
		return list;
	}


	public Map<String, Object> getProAll(int pagenum) {
		logger.info("getProAll 호출성공");
		Map<String,Object> map = projectDao.getProAll(pagenum);
		return map;
	}
	
}
