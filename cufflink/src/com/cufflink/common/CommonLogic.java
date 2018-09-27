package com.cufflink.common;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service //CommonController와 연동 @Autowired

public class CommonLogic {

	@Autowired // CommonDao와 연동을 위한 Service선언
	
	CommonDao commonDao;
	
	public Map<String,Object> map(){
		Map<String,Object> map = new HashMap<>();
		map = commonDao.getList();
		return map;
	}
}
