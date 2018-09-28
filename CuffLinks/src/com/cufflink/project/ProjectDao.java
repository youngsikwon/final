package com.cufflink.project;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProjectDao {
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	int result;
	List<Map<String,Object>> list;
	
	public int insert() {

		result = sqlSessionTemplate.insert("insert");
		return result;
	}

	public int update() {

		result = sqlSessionTemplate.update("update");
		return result;
	}

	public List<Map<String, Object>> list() {
		list = sqlSessionTemplate.selectList("mapper.select");
		return list;
	}

	public int delete() {

		result = sqlSessionTemplate.delete("delete");
		return result;
	}
}
