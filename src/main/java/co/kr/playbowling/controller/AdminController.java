package co.kr.playbowling.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.kr.playbowling.service.AdminService;
import co.kr.playbowling.vo.AdminVO;
import co.kr.playbowling.vo.MemberVO;

@Controller
@RequestMapping(value = "/manager")
public class AdminController {

	@Inject // 주입(심부름꾼) 명시
	AdminService service; // Service 호출을 위한 객체생성

	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);

	// admin 가입
	@RequestMapping(value = "/managerRegister", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		logger.info("get register");
	}

	@RequestMapping(value = "/managerRegister", method = RequestMethod.POST)
	public String postmemberRegister(AdminVO vo) throws Exception {
		logger.info("Post register");
		service.register(vo);
		return "redirect:/";
	}

	// admin 로그인
	@RequestMapping(value = "/managerLogin", method = RequestMethod.GET)
	public void getLogin() throws Exception {
		logger.info("get login");

	}
	

	
	
	// 로그인
	@RequestMapping(value = "/managerLogin", method = RequestMethod.POST)
	
	public String login(AdminVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception {
		logger.info("Post ManagerLogin");

		// 세션을 가져옴 (없으면 생성)
		HttpSession session = req.getSession(true);
		AdminVO admin = service.login(vo);

		if (admin != null) {
			// "USER"로 vo를 세션에 바인딩
			session.setAttribute("USER", vo);

		} else {
			session.setAttribute("USER", null);			
		}
		return "/manager/managerLoginPF";
	}
	

	
	/*
	 * //관리자로 로그인 후 회원 강제 탈퇴시키는 페이지로 연결시키는 메소드
	 * 
	 * @RequestMapping("/managerMem") public String getout() { return
	 * "/manager/managerMem"; }
	 * 
	 * //관리자로 로그인 후 강제 탈퇴시킬 회원의 아이디 입력 후 강제탈퇴 버튼 누르면 연결되는 메소드
	 * 
	 * @RequestMapping("/managerMem") public ModelAndView getout(String
	 * mem_id)throws Exception{
	 * 
	 * //유저 아이디 삭제 시키기 위해 vo에 담음 MemberVO vo = new MemberVO(); vo.setMem_id(mem_id);
	 * 
	 * //회원탈퇴 체크를 하기 위한 메소드, 탈퇴 시키려는 회원의 아이디가 있는지 검사 한 뒤 //result 변수에 저장
	 * service.getout(vo);
	 * 
	 * ModelAndView mav = new ModelAndView();
	 * 
	 * if(vo.getMem_id()!=null) { mav.setViewName("home"); mav.addObject("message",
	 * "회원이 정상적으로 강제탈퇴 처리 되었습니다.");
	 * 
	 * }else { mav.setViewName("/managerMem");
	 * mav.addObject("message","다시 확인해주세요."); } return mav; }
	 */
}
