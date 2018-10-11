package com.cufflink.client;

import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.util.HangulConversion;
import com.util.HashMapBinder;

@Controller
public class ClientController {

	Logger logger = Logger.getLogger(ClientController.class);
	@Autowired
	ClientLogic clientLogic = null;
	String userID = null;
	
	@RequestMapping("/clients/login")
	public String ClientLogin(HttpServletRequest req, HttpServletResponse res, Model model,
			@RequestParam Map<String, Object> pMap) {

		Map<String, Object> hMap = new HashMap<String, Object>();
		HttpSession session = req.getSession();
		Cookie Id = null;
		int capchar = 1;
		hMap = clientLogic.ClientLogin(pMap);

		
		if ((int) hMap.get("Idcheck") == 1) {

			

			userID = (String) hMap.get("S_ID");
			session.removeAttribute((String) hMap.get("S_ID") + "1");
			session.setMaxInactiveInterval(6000*6000);
			session.setAttribute((String) hMap.get("S_ID"), hMap);
			Id = new Cookie("id", (String) hMap.get("S_ID"));
			Id.setPath("/");
			res.addCookie(Id);
			
	
			
            if(hMap.get("S_KINDS").equals("클라이언트")) {
            	return "auth/loginOk";
			} 
			else {
				return "auth/PartnersLoginOk";
			}
		
			
		}
		// 비밀번호 없음
		else if ((int) hMap.get("Idcheck") == 0) {
			session.removeAttribute("first");
	
			if (pMap.get("f_id").equals(hMap.get("S_ID"))) {

				if (session.getAttribute((String) pMap.get("f_id") + "1") != null) {
					capchar = (int) session.getAttribute((String) pMap.get("f_id") + "1");
					capchar += 1;
					session.setMaxInactiveInterval(60);
					session.setAttribute((String) pMap.get("f_id") + "1", capchar);
					session.setAttribute("capchar", (String) pMap.get("f_id") + "1");
					logger.info(capchar);
					return "auth/login";
				} else {
					session.setMaxInactiveInterval(60);
					session.setAttribute((String) pMap.get("f_id") + "1", capchar);
					session.setAttribute("capchar", (String) pMap.get("f_id") + "1");
					logger.info(capchar);
					return "auth/login";
				}

			}

		}
		// 아이디없음S
		session.setAttribute((String) pMap.get("f_id") + "1", -1);
		session.setAttribute("capchar", (String) pMap.get("f_id") + "1");
		return "auth/login";
	}


	@RequestMapping("/client/logout")
	public String logout(HttpServletRequest req,HttpServletResponse res, @RequestParam Map<String, Object> pMap) {

		Cookie[]    cs          = req.getCookies();
	    Map<String,Object> info = null;
	    HttpSession infoSession = null;
	    infoSession = req.getSession();
	    String Id = "";
		for(int i = 0; i<cs.length;i++){
			
			String cName = cs[i].getName();
			  if("id".equals(cName)){
				  Id   = cs[i].getValue();
				  info = (Map<String,Object>)infoSession.getAttribute(cs[i].getValue());
				
			  }
		}

		infoSession.removeAttribute(Id);
		logger.info(Id);
		
		return "common/main";

	}

	@RequestMapping("/clients/join")
	public String logout(@RequestParam Map<String, Object> pMap) {
		
		pMap.put("s_shape", "CuffLink");
		
		if(pMap.get("radio").equals("1")) {
			pMap.put("radio", "클라이언트");
		}
		else {
			pMap.put("radio", "파트너스");
		}
			
		
		clientLogic.join(pMap);

		
		return "auth/login";

	}

	@RequestMapping("/clients/idcheck")
	public String Idcheck(@RequestParam Map<String, Object> pMap, Model mod) {

		int result = 0;
		result = clientLogic.Idcheck(pMap);
		mod.addAttribute("result", result);
		return "forward:IdCheck.jsp";

	}

	@RequestMapping("/capchar")
	public String callback(@RequestParam Map<String, Object> pMap, Model mod) {

		return "auth/callback";

	}

	@RequestMapping("/capcharJoin")
	public String capcharJoin(HttpServletResponse res, @RequestParam Map<String, Object> pMap, Model mod) {

		
		logger.info("capcharJoin");
		Cookie cookie = new Cookie("j_token", (String) pMap.get("j_token"));
		cookie.setMaxAge(600 * 600);
		res.addCookie(cookie);
		cookie = new Cookie("j_id", (String) pMap.get("j_id"));
		cookie.setMaxAge(600 * 600);
		res.addCookie(cookie);
		cookie = new Cookie("j_email", (String) pMap.get("j_email"));
		cookie.setMaxAge(600 * 600);
		res.addCookie(cookie);
		cookie = new Cookie("s_shape", (String) pMap.get("s_shape"));
		cookie.setMaxAge(600 * 600);
		res.addCookie(cookie);
	
		return "auth/c_join";

	}


	@RequestMapping("/clients/emailcheck")
	public String Emailcheck(@RequestParam Map<String, Object> pMap, Model mod) {

		int result = 0;
		result = clientLogic.Emailcheck(pMap);
		mod.addAttribute("result", result);
		return "forward:EmailCheck.jsp";

	}
	
	@RequestMapping("/capcharLogin")
	public String capcharLogin(HttpServletRequest req, HttpServletResponse res,@RequestParam Map<String, Object> pMap, Model mod) {

		//여기는  로그인 네아로 카카오 연동후 가는곳 
	
		HttpSession session = req.getSession();
		Cookie Id = null;
		Map<String, Object> map = null;
		
		map = clientLogic.UserInfoEmail(pMap);
		
		
		
	    userID = (String) map.get("S_ID");
		session.setMaxInactiveInterval(6000*6000);
		session.setAttribute((String) map.get("S_ID"), map);
		Id = new Cookie("id", (String) map.get("S_ID"));
		Id.setPath("/");
		res.addCookie(Id);
		
	
	
		
		  if(map.get("S_KINDS").equals("파트너스")) {
			  return "auth/PartnersLoginOk";
		  } 
	      else {
	    	  return "auth/loginOk";
				
	      }

	}
	
	@RequestMapping("/capchar/join")
	public String capcharJoin(HttpServletRequest req, HttpServletResponse res, @RequestParam Map<String, Object> pMap) {

		Cookie[] cookie = req.getCookies();

		Cookie del = null;
		String cookiename = null;
		logger.info("------------------------------------------------------------------------");
		
		if(pMap.get("radio").equals("1")) {
			pMap.put("radio", "클라이언트");
		}
		else {
			pMap.put("radio", "파트너스");
		}
		
		for (int i = 0; i < cookie.length; i++) {
			cookiename = cookie[i].getName();

			if ("j_token".equals(cookiename)) {
				pMap.put("j_token", cookie[i].getValue());
				del = new Cookie(cookiename,"");
				del.setMaxAge(0);
				res.addCookie(del);
			} 
			else if ("j_id".equals(cookiename)) {
				pMap.put("j_id", cookie[i].getValue());
				del = new Cookie(cookiename,"");
				del.setMaxAge(0);
				res.addCookie(del);
			} 
			else if ("j_email".equals(cookiename)) {
				pMap.put("j_email", cookie[i].getValue());
				del = new Cookie(cookiename,"");
				del.setMaxAge(0);
				res.addCookie(del);
			} 
			else if ("s_shape".equals(cookiename)) {
				pMap.put("j_shape", cookie[i].getValue());
				del = new Cookie(cookiename,"");
				del.setMaxAge(0);
				res.addCookie(del);
			}
		}

		
		clientLogic.Njoin(pMap);


		return "common/main";

	}
	
	
	@RequestMapping(value = "/PartnersImages", method=RequestMethod.POST)
	public String PartnersImages(@RequestParam("f_file") MultipartFile f_file, @RequestParam Map<String,Object>pMap) {
	String fileName = HangulConversion.toKor(f_file.getOriginalFilename());
	String path     = "C:\\git2\\final\\CuffLinks\\WebContent\\pds\\";

	int result = 0;
	pMap.put("address", HangulConversion.toUTF((String)pMap.get("address")));
	pMap.put("f_gender", HangulConversion.toUTF((String)pMap.get("f_gender")));
	pMap.put("f_name", HangulConversion.toUTF((String)pMap.get("f_name")));
	pMap.put("f_dropdown", HangulConversion.toUTF((String)pMap.get("f_dropdown")));
	pMap.put("f_file", path+fileName);
	pMap.put("phone", pMap.get("skills1")+"-"+pMap.get("second")+"-"+pMap.get("three"));
	pMap.put("c_phone", pMap.get("skills2")+"-"+pMap.get("SecondT"));
	logger.info(pMap.get("c_phone"));
	result = clientLogic.UserUpdate(pMap);
	
	if(f_file!=null) {


		File file = new File(path+fileName);
		
		try {
			
			byte[] bytes = f_file.getBytes();
			BufferedOutputStream bos = 
					new BufferedOutputStream(
							new FileOutputStream(file));
			
			bos.write(bytes);
			bos.close();
			long size = file.length();
		} catch (Exception e) {
			// TODO: handle exception
			logger.info(e.toString());
		}
		
	}
	
		return "auth/clientSettings/ClientProfile";
	}
	
	
	@RequestMapping("/client/projectRegister")
	public String projectRegister1(HttpServletRequest req,@RequestParam("pro_file") MultipartFile f_file, @RequestParam Map<String,Object>pMap) {
		
		String fileName = HangulConversion.toKor(f_file.getOriginalFilename());
		String path     = "C:\\git2\\final\\CuffLinks\\WebContent\\pds\\";
		HashMapBinder binder = new HashMapBinder(req);
		binder.bind(pMap);

		Cookie[]    cs          = req.getCookies();
		HttpSession infoSession = req.getSession();
		Map<String,Object> info = null;
		int      login_cnt = 0;
		for(int i = 0; i<cs.length;i++){

		String cName = cs[i].getName();
		  if("id".equals(cName)){
			
			  info = (Map<String,Object>)infoSession.getAttribute(cs[i].getValue());
			
		  }
		}
		
		if(pMap.get("pro_skill").equals("개발")) {
			pMap.put("pro_partners", pMap.get("pro_partners"));
		}
		else {
			pMap.put("pro_partners", pMap.get("pro_partners2"));
		}
		pMap.put("pro_file", path+fileName);
        pMap.put("c_no", info.get("C_NO"));
		
	
		
		if(f_file!=null) {


			File file = new File(path+fileName);
			
			try {
				
				byte[] bytes = f_file.getBytes();
				BufferedOutputStream bos = 
						new BufferedOutputStream(
								new FileOutputStream(file));
				
				bos.write(bytes);
				bos.close();
				long size = file.length();
			} catch (Exception e) {
				// TODO: handle exception
				logger.info(e.toString());
			}
			
		}
		
		clientLogic.projectRegister1(pMap);
		
		return "auth/clientSettings/ClientProfile";
	}
	//*********************************	클라이언트 로그인 네비게이터 검수 하위메뉴
	
	//프로젝트 검수중
	//네비게이터의 검수중메뉴와 동일
	
	//프로젝트 임시저장
	@RequestMapping("/clients/projectSaved")
	public String projectSaved() {
		return "/clients/manage/project/projectSaved";
	}
	//프로젝트 등록실패
	@RequestMapping("/clients/projectRejected")
	public String projectRejected() {
		return "/clients/manage/project/projectRejected";
	}
	
	//프로젝트 종료된 프로젝트
	//네비게이터의 종료된 프로젝트 메뉴와 동일
	
	//프로젝트 완료된 프로젝트
	@RequestMapping("/clients/projectCompletedContract")
	public String projectCompletedContract() {
		return "/clients/manage/projectCompletedContract";
	}
	//프로젝트 취소한 프로젝트
	@RequestMapping("/clients/projectCancelledProject")
	public String projectCancelledProject() {
		return "/clients/manage/projectCancelledProject";
	}
	
	//*********************************	클라이언트 로그인 우측 클라이언트 정보메뉴	

	//마이 커프링크
	@RequestMapping("/clients/ClientMyCufflink")
	public String ClientMyCufflink() {
		return "/clients/ClientMyCufflink";
	}
	
	//프로젝트 찾기
	@RequestMapping("/clients/projectFind")
	public String projectFind() {
		return "clients/projectFind";
	}
	//프로젝트 등록
	@RequestMapping("/clients/projectRegister")
	public String projectRegister() {
		return "clients/projectRegister";
	}
	
	//프로젝트 등록상세
	   @RequestMapping("/clients/projectRegisterDetail")
	   public String projectRegisterDetail() {
	      return "clients/projectRegisterDetail";
	   }
	
	//---------------------------------------
	//프로젝트 클라이언트 정보
	@RequestMapping("/clients/ClientInfo")
	public String ClientInfo() {
		return "/clients/info/ClientInfo";
	}
	//프로젝트 클라이언트 정보등록
	@RequestMapping("/clients/ClientInfoUpdate")
	public String ClientInfoUpdate() {
		return "/clients/info/ClientInfoUpdate";
	}
	//프로젝트 프로젝트 히스토리
	@RequestMapping("/clients/ClientProjectHistory")
	public String ClientProjectHistory() {
		return "/clients/ClientProjectHistory";
	}	
	
	
	
	
}
