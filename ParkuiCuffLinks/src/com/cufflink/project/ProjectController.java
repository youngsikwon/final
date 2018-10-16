package com.cufflink.project;

import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.sound.midi.MidiDevice.Info;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.util.HangulConversion;

@Controller
@RequestMapping("/project")
public class ProjectController {
	Logger logger = Logger.getLogger(ProjectController.class);

	@Autowired
	ProjectLogic projectLogic;
	String id;

	@RequestMapping("/projectAttention")
	public String projectAttention(@RequestParam Map<String, Object> pMap) {
		// 이메일(유저), 프로젝트번호, 프로젝트가격, 상태
		pMap.put("su_state", HangulConversion.toUTF(String.valueOf(pMap.get("su_state"))));
		projectLogic.projectAttention(pMap);
		if ("관심".equals(pMap.get("su_state"))) {
			return "redirect:/partners/partnersInterestProject";
		} else {
			return "redircet:/partners/partnersSupportHistory";
		}
	}

	@RequestMapping("/projectcancel")
	public String projectcancel(@RequestParam Map<String, Object> pMap) {
		// 이메일(유저), 번호
		logger.info(pMap);
		projectLogic.projectcancel(pMap);

		// �������ּ���
		return "";
	}

	public Map<String, Object> userInfo(HttpSession session, HttpServletRequest req) {
		Cookie[] cookies = req.getCookies();
		for (Cookie cookie : cookies) {
			if ("id".equals(cookie.getName())) {
				id = cookie.getValue();
			}
		}
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute(id);
		return userInfo;
	}

	@RequestMapping("/page")
	public String getProjectFind(Model mod, Map<String, Object> pMap, HttpServletRequest req, HttpSession session) {
		logger.info("ProjectFind ȣ�⼺��");

		// ������Ʈ --ã��--
		mod.addAttribute("ProjectFind1", projectLogic.getProjectFind1()); // ����
		mod.addAttribute("ProjectFind2", projectLogic.getProjectFind2()); // ������
		mod.addAttribute("ProjectCate_ALL", projectLogic.getProject_cateALL()); // ī�װ� ���~
		mod.addAttribute("Projectseach", projectLogic.getProjectseach());// �˻� ���
		// mod.addAttribute("getAll",
		// projectLogic.getProAll(Integer.parseInt(pagenum))); // ������ ���̼�
		// ������Ʈ
		mod.addAttribute("Project", projectLogic.Project(pMap));
		if (userInfo(session, req) != null)
			mod.addAttribute("kind", userInfo(session, req).get("S_KINDS"));
		// Ŭ���̾�Ʈ �����丮 : ����� �ǵ� �־�α�.
		return "Project/ProjectFind";
	}

	// ���� ������Ʈ
	@RequestMapping("/projectSubmitted")
	public String projectSubmitted(Model m, HttpSession session, HttpServletRequest req) {
		Map<String, Object> map = userInfo(session, req);
		m.addAttribute("kind", userInfo(session, req).get("S_KINDS"));
		List<Map<String, Object>> rList = projectLogic.getState(map.get("S_EMAIL").toString(), "����");
		m.addAttribute("getState", rList);
		return "ProjectAttention/projectSubmitted";
	}

	// ������Ʈ ������ ������
	@RequestMapping("/projectRecruiting")
	public String projectRecruiting(Model m, HttpSession session, HttpServletRequest req) {
		Map<String, Object> map = userInfo(session, req);
		m.addAttribute("kind", userInfo(session, req).get("S_KINDS"));
		List<Map<String, Object>> state = projectLogic.getState(map.get("S_EMAIL").toString(), "지원");
		m.addAttribute("getState", state);
		return "Project/ProjectRecruiting";
	}

	// ������Ʈ �������� ������Ʈ
	@RequestMapping("/projectContractInProgress")
	public String projectContractInProgress(Model m, HttpSession session, HttpServletRequest req) {
		Map<String, Object> map = userInfo(session, req);
		m.addAttribute("kind", userInfo(session, req).get("S_KINDS"));
		List<Map<String, Object>> rList = projectLogic.getState(map.get("S_EMAIL").toString(), "진행");
		m.addAttribute("getState", rList);
		return "Project/ProjectContractInProgress";
	}

//***************************************** ��ưŬ��ȿ�� �߰� 
	// ������Ʈ �򰡴���� ������Ʈ
	@RequestMapping("/projectReviewContract")
	public String projectReviewContract(Model m, HttpSession session, HttpServletRequest req) {
		Map<String, Object> map = userInfo(session, req);
		m.addAttribute("kind", userInfo(session, req).get("S_KINDS"));
		List<Map<String, Object>> rList = projectLogic.getState(map.get("S_EMAIL").toString(), "완료");
		m.addAttribute("getState", rList);
		return "Project/ProjectReviewContract";
	}

	// ������Ʈ �Ϸ��� ������Ʈ
	@RequestMapping("/projectCompletedContract")
	public String projectCompletedContract(Model m, HttpSession session, HttpServletRequest req) {
		Map<String, Object> map = userInfo(session, req);
		m.addAttribute("kind", userInfo(session, req).get("S_KINDS"));
		List<Map<String, Object>> rList = projectLogic.getState(map.get("S_EMAIL").toString(), "완료");
		m.addAttribute("getState", rList);
		return "Project/ProjectCompletedContract";
	}
//***************************************** ��ưŬ��ȿ���߰�	

	// ������Ʈ �󼼺���
	@RequestMapping("/View")
	public String getProjectRoom(Model mod, @RequestParam("pro_no") int pro_no, Map<String, Object> pMap,
			HttpSession session, HttpServletRequest req) {

		mod.addAttribute("Pronumber", pro_no);
		mod.addAttribute("Project", projectLogic.Project(pMap));
		mod.addAttribute("view", projectLogic.ProjectView(pro_no));
		if (userInfo(session, req) != null)
			mod.addAttribute("kind", userInfo(session, req).get("S_KINDS"));

		return "Project/ProjectRoom";
	}

}
