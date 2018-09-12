package com.cufflink.common;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MainDao {

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public List<Map<String,Object>> list(){
		List<Map<String,Object>> list = sqlSessionTemplate.selectList("get");
		return list;
	}
}
