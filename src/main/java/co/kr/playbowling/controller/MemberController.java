package co.kr.playbowling.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.kr.playbowling.service.MemberService;
import co.kr.playbowling.service.MemberServicelmpl;
import co.kr.playbowling.vo.BoardVO;
import co.kr.playbowling.vo.MemberVO;
import co.kr.playbowling.vo.UserSessionVO;


@Controller
@RequestMapping("/member/*")
public class MemberController {
	//濡쒓렇�솗�씤
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Inject
	MemberService service;
	
	// �쉶�썝媛��엯  �솕硫�
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void getRegister() throws Exception {
		
		logger.info("get register");
		
	}
	
	//�쉶�썝媛��엯
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String postmemberRegister(MemberVO vo) throws Exception{
		System.out.println("1");
		logger.info("Post register");
		System.out.println("2");
		int result=service.idChk(vo);
		System.out.println("3");
		try {
			System.out.println("4");
			if(result==1) {
				System.out.println("5");
				return "/member/register";
			}else if(result==0) {
				System.out.println("6");
				service.register(vo);
				System.out.println("7");
			}
			
		}catch(Exception e) {
			System.out.println("8");
			throw new RuntimeException();
		}
		System.out.println("9");
		return "redirect:/";
		
	}
	
	
	//로그인 화면
	   @RequestMapping(value = "/login", method = RequestMethod.GET)
	   public void getLogin() throws Exception{
	      logger.info("get login");
	   }
	   
	   //로그인
	   @RequestMapping(value = "/login", method = RequestMethod.POST)
	   public String login(MemberVO vo, HttpServletRequest req, RedirectAttributes rttr) throws Exception{
	      logger.info("Post MemberLogin");
	      
	      // 세션을 가져옴 (없으면 생성)
	      HttpSession session = req.getSession(true);
	      MemberVO member = service.login(vo);
	      
	      if(member != null) {
	         //"USER"로 vo를 세션에 바인딩
	         session.setAttribute("USER", vo);
	            
	      } 
	       else {
	         session.setAttribute("USER", null);
	         
	      }
	      return "/member/loginsuccess";
	      
	   }
	   
	   
	//濡쒓렇�븘�썐
	@RequestMapping(value ="/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		logger.info("get Logout");
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	//濡쒓렇�씤 �꽦怨� �솕硫�
	@RequestMapping("/loginsuccess")
	public String loginsuccess() {
		return "/member/loginsuccess";
	}
	
	@ResponseBody
	@RequestMapping(value="/idChk",method=RequestMethod.POST)
	public int idChk(MemberVO vo)throws Exception{
		System.out.println("a");
		int result = service.idChk(vo);
		System.out.println("b");
		return result;
	}
	
	
}