package co.kr.playbowling.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import co.kr.playbowling.service.BoardService;
import co.kr.playbowling.vo.BoardVO;

@Controller
@RequestMapping(value = "/board")
public class BoardController {

	@Inject // 주입(심부름꾼) 명시
	BoardService service; // Service 호출을 위한 객체생성


	@RequestMapping(value = "/boardList", method = RequestMethod.GET) // 주소 호출 명시 . 호출하려는 주소 와 REST 방식설정 (GET)

	public String listAll(Model model) throws Exception { // 메소드 인자값은 model 인터페이스(jsp전달 심부름꾼)
		model.addAttribute("list", service.listAll()); // jsp에 심부름할 내역(서비스 호출)
		return "/board/boardList";
	}


	//글작성
	@RequestMapping(value="/boardWrite", method = RequestMethod.GET)
	public void boardWriteGET(BoardVO board, Model model) throws Exception{
	}
	
	@RequestMapping(value="/boardWrite", method = RequestMethod.POST)
	
	public String boardWritePOST(BoardVO board, RedirectAttributes rttr) throws Exception{
		service.write(board);  //글 작성 서비스 호출
		return "redirect:/board/boardList";
		
	}
	
	@RequestMapping(value="/boardRead", method=RequestMethod.GET)	//get으로 페이지 호출
		public void read(@RequestParam("bnum")int bnum, Model model)throws Exception{
		 // 인자값은 파라미터 값으로 기본키인 bnum기준으로 Model을 사용하여 불러옴
		model.addAttribute(service.read(bnum));
	}
	
	@RequestMapping(value="/boardModify", method=RequestMethod.GET)	//GET방식으로 페이지 호출
		public void modifyGET(int bnum, Model model) throws Exception{
		model.addAttribute(service.read(bnum));
		//수정 위한 글읽기 서비스 호출
	}
	
	@RequestMapping(value="/boardModify", method=RequestMethod.POST)
	public String modifyPost(BoardVO board, RedirectAttributes rttr) throws Exception{
		service.modify(board);
		//글 수정 서비스 호출
		return "redirect:/board/boardList";
	}
	
	@RequestMapping(value="/boardRemove", method=RequestMethod.POST)
	public String removePOST(@RequestParam("bnum")int bnum,RedirectAttributes rttr) throws Exception{
		service.remove(bnum);
		return "redirect:/";
	}
	
	//게시물 목록 + 페이징 추가
	@RequestMapping(value="/listPage", method=RequestMethod.GET)
	public void getListPage(Model model, @RequestParam("num")int num) throws Exception{
		
		//게시물 총 갯수
		int count = service.boardCount();		
		//한 페이지에 출력할 게시물 갯수
		int postNum = 10;		
		//하단 페이징 번호([게시물 총 갯수 / 한 페이지에 출력할 갯수 ] 의 올림)
		int pageNum = (int)Math.ceil((double)count/postNum);		
		//출력할 게시물
		int displayPost = (num-1)*postNum;
		//한번에 표시할 페이징 번호의 갯수
		int pageNum_cnt = 10;
		//표시되는 페이지 번호 중 마지막 번호
		int endPageNum = (int)(Math.ceil((double)num/(double)pageNum_cnt)*pageNum_cnt);
		//표시되는 페이지 번호 중 첫번재 번호
		int startPageNum = endPageNum-(pageNum_cnt-1);
		//마지막 번호 재계산
		int endPageNum_tmp = (int)(Math.ceil((double)count/(double)pageNum_cnt));
		if(endPageNum>endPageNum_tmp) {
			endPageNum=endPageNum_tmp;
		}
		boolean prev = startPageNum ==1? false : true;
		boolean next = endPageNum * pageNum_cnt >=count ? false:true;
		
		List<BoardVO> list = null;
		list = service.listPage(displayPost, postNum);
		model.addAttribute("list", list);
		model.addAttribute("pageNum",pageNum);
		
		//시작 및 끝 번호
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		
		//이전 및 다음
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		//현재 페이지
		model.addAttribute("select",num);
		
	}
	



}



