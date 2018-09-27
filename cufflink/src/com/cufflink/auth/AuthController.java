package com.cufflink.auth;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller()
@RequestMapping("/auth")
public class AuthController {

	//@Autowired
	AuthController authcontroller;
	
	//로그인
	@RequestMapping("/login")
	public String login() {
		return "auth/login";
	}
	//타사로그인
	@RequestMapping("/otherJoin")
	public String otherJoin() {
		return "auth/otherJoin";
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
	
	//계정설정 - 기본수정 
	@RequestMapping("/ClientProfile")
	public String ClientProfile() {
		return "/auth/clientSettings/ClientProfile";
	}
	//계정설정 - 계좌관리
	@RequestMapping("/ClientBankAccount")
	public String ClientBankAccount() {
		return "/auth/clientSettings/ClientBankAccount";
	}
	//계정설정 - 코인충전페이지
	@RequestMapping("/ClientAddcoin")
	public String ClientAddcoin() {
		return "/auth/clientSettings/ClientAddcoin";
	}
	//계정설정 - 비밀번호변경
	@RequestMapping("/ClientRelogin")
	public String ClientRelogin() {
		return "/auth/clientSettings/ClientRelogin";
	}
	//계정설정 - 알림설정
	@RequestMapping("/ClientNotificationSetting")
	public String ClientNotificationSetting() {
		return "/auth/clientSettings/ClientNotificationSetting";
	}
	//계정설정 - 회원탈퇴
	@RequestMapping("/ClientWithdrawal")
	public String ClientWithdrawal() {
		return "/auth/clientSettings/ClientWithdrawal";
	}
	
	//*********************************	클라이언트 로그인 우측 클라이언트 정보메뉴
	
	//휴대폰을 통한 지문인식
	@RequestMapping("/fingerprint")
	public String fingerprint() {
		return "/auth/fingerprint";
	}
	//비밀번호찾기
	@RequestMapping("/idpassfind")
	public String idpassfind() {
		return "/auth/idpassfind";
	}
	//qr코드
	@RequestMapping("/qrcode")
	public String qrcode() {
		return "/auth/qrcode";
	}
}
