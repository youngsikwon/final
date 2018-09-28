package com.cufflink.client;

import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClientLogic {
	
	Logger logger = Logger.getLogger(ClientLogic.class);
	@Autowired
	ClientDao clientDao = null;
	
	public int Idcheck(Map<String,Object> pMap) {
		
		return clientDao.IdExit(pMap);
	}
	
	public Map<String,Object> ClientLogin(Map<String,Object> pMap) {
		int IdExit = 0;
		IdExit     = clientDao.IdExit(pMap);
		
		//아이디가 존제하면  비밀번호도 맞는지 처리
		//-1 아이디가 없음 0 비밀번호가없음 1이면 성공
		
		if(IdExit==1) {
			pMap = clientDao.login(pMap);
			return pMap;
		
		}
		//아이디가 존제하지 않다고 처리한다 .
		pMap.put("Idcheck", -1);
		return pMap;
		
		
	}


	public int join(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		int IdExit = 0;
		clientDao.join(pMap);
		return IdExit;
		
	}

	public int Njoin(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		int IdExit = 0;
		clientDao.Njoin(pMap);
		return IdExit;
		
	}
	public int Emailcheck(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		return  clientDao.EmailExit(pMap);
	}

	public int NaverCapchar(Map<String, Object> pMap) {
		
		logger.info("NaverCapchar 호출 성공");
		pMap.put("f_email", pMap.get("j_email"));
		int result = clientDao.EmailExit(pMap);

		return result;
		
	}

	public String proc_board_test(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		logger.info("proc_board_test");
		
		String msg = null;
		clientDao.proc_board_test(pMap);
		
		return "";
	}

	public void UserUpdate(Map<String, Object> pMap) {
		// TODO Auto-generated method stub
		clientDao.UserUpdate(pMap);
		
	}
	
}
