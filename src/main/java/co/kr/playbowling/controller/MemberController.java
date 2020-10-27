package co.kr.playbowling.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

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
		logger.info("Post register");
		int result=service.idChk(vo);
		try {
			if(result==1) {
				return "/member/register";
			}else if(result==0) {
				service.register(vo);
			}
			
		}catch(Exception e) {
			throw new RuntimeException();
		}
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
		int result = service.idChk(vo);
		return result;
	}
	
	//이용약관 화면
	@RequestMapping("/policy")
	public String policy() {
		return "/member/policy";
	}
	
	//개인정보취급방침 화면
	@RequestMapping("/personpolicy")
	public String personPolicy() {
		return "/member/personpolicy";
	}
	
	
	
}