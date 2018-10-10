package com.cufflink.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sun.glass.ui.CommonDialogs.Type;

@Service
public class ClientDao {

	Logger logger = Logger.getLogger(ClientDao.class);
	@Autowired
	SqlSessionTemplate sqlSessionTemplate = null;
	

	//아이디가 존제하면 1 없으면 0
	public int IdExit(Map<String,Object> pMap) {
		
	    return sqlSessionTemplate.selectOne("idExit",pMap);
	}

	public Map<String, Object> login(Map<String, Object> pMap) {
		
		Map<String,Object> hMap = new HashMap<String,Object>();
		logger.info(pMap.get("f_id"));
		hMap = sqlSessionTemplate.selectOne("Login",(String)pMap.get("f_id"));
	
	    if(pMap.get("f_pw").equals(hMap.get("S_PW"))) {
	    	
	    	hMap.put("Idcheck", 1);
	    	return hMap;
	    	
	    }

	    hMap.put("Idcheck", 0);
		return hMap;
		
	}

	public void join(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		int result = 0;
	
		result = sqlSessionTemplate.insert("Join",pMap);
		
	}

	public int EmailExit(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("EmailExit",pMap);
	}

	public int Njoin(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		
	int result = 0;
		
	logger.info("JoinCapchar 호출 성공 ");
	
	logger.info(pMap.get("j_email"));
	logger.info(pMap.get("j_id"));
	logger.info(pMap.get("j_shape"));
	logger.info(pMap.get("j_token"));
	logger.info(pMap.get("radio"));
        result = sqlSessionTemplate.insert("JoinCapchar",pMap);
		return result;
	}

	public void proc_board_test(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		
		sqlSessionTemplate.selectOne("proc_board_test",pMap);
		
		logger.info(pMap.get("msg"));
	}

	public int UserUpdate(Map<String, Object> pMap) {
		// TODO Auto-generated method stub

		int result = 0;
	    result = sqlSessionTemplate.update("proc_ClientUpdate",pMap);
	
	    return result;
	}

	public Map<String, Object> UserInfoEmail(Map<String, Object> pMap) {
		
		Map<String,Object> map = null;
		map = sqlSessionTemplate.selectOne("UserInfoEmail", (String)pMap.get("j_email"));
	
		return map;
	}

	public List<Map<String, Object>> onMapReady() {
		// TODO Auto-generated method stub
		logger.info("onMapReadyDao 호출 성공");
		List<Map<String,Object>> onMapList = sqlSessionTemplate.selectList("onMapReady");
		
		return onMapList;
	}

	//유저의 정보를 가져온다.!
	public Map<String, Object> Modify(String s_email) {
		// TODO Auto-generated method stub
		Map<String, Object> pMap = sqlSessionTemplate.selectOne("ClientInfo",s_email);
		return pMap;
	}

	//이메일이 있는지 없는지 체크한다 .!!
	public int ModifyEmailCheck(String s_email) {

		int result = 0;
		
		result = sqlSessionTemplate.selectOne("CEmailExit",s_email);

		return result;
	}

	//유저를 넣는다.
	public void ClientInsert(String s_email) {
		// TODO Auto-generated method stub
		sqlSessionTemplate.insert("ClientInsert",s_email);
		
	}

	public String Pwcheck(Map<String,Object>pMap) {
		
		String result = "";

		result = sqlSessionTemplate.selectOne("Pwcheck",pMap);
		return result;
		  
	}

	public int PwUpdate(Map<String,Object>pMap) {
		int result = 0;
		result = sqlSessionTemplate.update("PwUpdate",pMap);
		return result;
	}

	public int UserExcape(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		int result = 0;
		result  = sqlSessionTemplate.delete("UserExcape",pMap);
		return result;
	}

	public void projectRegister1(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		

        sqlSessionTemplate.insert("ProJect_insert",pMap);
        
	}


}
