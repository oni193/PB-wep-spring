package co.kr.playbowling.controller;

import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.kr.playbowling.service.BoardService;
import co.kr.playbowling.service.ManagerService;
import co.kr.playbowling.vo.BoardVO;
import co.kr.playbowling.vo.MemberVO;

@Controller
@RequestMapping(value = "/manager")
public class ManagerController {

	@Inject // 주입(심부름꾼) 명시
	ManagerService service; // Service 호출을 위한 객체생성
	BoardService boardService; // BoardService

	@RequestMapping(value = "/managerMem", method = RequestMethod.GET) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)

	public String listAll(Model model) throws Exception { // 메소드 인자값은 model 인터페이스(jsp전달 심부름꾼)
		model.addAttribute("list", service.listAll()); // jsp에 심부름할 내역(서비스 호출)
		return "/manager/managerMem";
	}

	@RequestMapping(value = "/managerBoard", method = RequestMethod.GET) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)

	public String blistAll(Model model) throws Exception { // 메소드 인자값은 model 인터페이스(jsp전달 심부름꾼)
		model.addAttribute("list", service.blistAll()); // jsp에 심부름할 내역(서비스 호출)
		return "/manager/managerBoard";
	}

	// 게시물 목록 + 페이징 추가
	@RequestMapping(value = "/listPage", method = RequestMethod.GET)
	public void getListPageM(Model model, @RequestParam("num") int num) throws Exception {

		// 게시물 총 갯수
		int count = service.boardCount();
		// 한 페이지에 출력할 게시물 갯수
		int postNum = 10;
		// 하단 페이징 번호([게시물 총 갯수 / 한 페이지에 출력할 갯수 ] 의 올림)
		int pageNum = (int) Math.ceil((double) count / postNum);
		// 출력할 게시물
		int displayPost = (num - 1) * postNum;
		// 한번에 표시할 페이징 번호의 갯수
		int pageNum_cnt = 10;
		// 표시되는 페이지 번호 중 마지막 번호
		int endPageNum = (int) (Math.ceil((double) num / (double) pageNum_cnt) * pageNum_cnt);
		// 표시되는 페이지 번호 중 첫번재 번호
		int startPageNum = endPageNum - (pageNum_cnt - 1);
		// 마지막 번호 재계산
		int endPageNum_tmp = (int) (Math.ceil((double) count / (double) pageNum_cnt));

		if (endPageNum > endPageNum_tmp) {
			endPageNum = endPageNum_tmp;
		}
		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		List<BoardVO> list = null;
		list = service.listPage(displayPost, postNum);
		model.addAttribute("list", list);
		model.addAttribute("pageNum", pageNum);
		// 시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		// 이전 및 다음
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		// 현재 페이지
		model.addAttribute("select", num);
	}

	// 게시물 목록 + 페이징 추가
	@RequestMapping(value = "/memPage", method = RequestMethod.GET)
	public void getMemPage(Model model, @RequestParam("num") int num) throws Exception {

		// 게시물 총 갯수
		int count = service.boardCount();
		// 한 페이지에 출력할 게시물 갯수
		int postNum = 10;
		// 하단 페이징 번호([게시물 총 갯수 / 한 페이지에 출력할 갯수 ] 의 올림)
		int pageNum = (int) Math.ceil((double) count / postNum);
		// 출력할 게시물
		int displayPost = (num - 1) * postNum;
		// 한번에 표시할 페이징 번호의 갯수
		int pageNum_cnt = 10;
		// 표시되는 페이지 번호 중 마지막 번호
		int endPageNum = (int) (Math.ceil((double) num / (double) pageNum_cnt) * pageNum_cnt);
		// 표시되는 페이지 번호 중 첫번재 번호
		int startPageNum = endPageNum - (pageNum_cnt - 1);
		// 마지막 번호 재계산
		int endPageNum_tmp = (int) (Math.ceil((double) count / (double) pageNum_cnt));

		if (endPageNum > endPageNum_tmp) {
			endPageNum = endPageNum_tmp;
		}
		boolean prev = startPageNum == 1 ? false : true;
		boolean next = endPageNum * pageNum_cnt >= count ? false : true;
		List<BoardVO> list = null;
		list = service.listPage(displayPost, postNum);
		model.addAttribute("list", list);
		model.addAttribute("pageNum", pageNum);
		// 시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		// 이전 및 다음
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		// 현재 페이지
		model.addAttribute("select", num);
	}

	@RequestMapping(value = "/boardRemove", method = RequestMethod.POST)
	public String removePOST(@RequestParam("bnum") int bnum, RedirectAttributes rttr) throws Exception {
		boardService.remove(bnum);
		return "redirect:/board/boardList";
	}

}
