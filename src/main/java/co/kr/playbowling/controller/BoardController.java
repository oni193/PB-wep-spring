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

	@Inject // 二쇱엯(�떖遺�由꾧씔) 紐낆떆
	BoardService service; // Service �샇異쒖쓣 �쐞�븳 媛앹껜�깮�꽦

	//寃뚯떆湲� 紐⑸줉
	@RequestMapping(value = "/boardList", method = RequestMethod.GET) // 二쇱냼 �샇異� 紐낆떆 . �샇異쒗븯�젮�뒗 二쇱냼 �� REST 諛⑹떇�꽕�젙 (GET)
	public String listAll(Model model) throws Exception { // 硫붿냼�뱶 �씤�옄媛믪� model �씤�꽣�럹�씠�뒪(jsp�쟾�떖 �떖遺�由꾧씔)
		model.addAttribute("list", service.listAll()); // jsp�뿉 �떖遺�由꾪븷 �궡�뿭(�꽌鍮꾩뒪 �샇異�)
		
		return "redirect:/board/listPage?num=1";
	}


	//湲��옉�꽦
	@RequestMapping(value="/boardWrite", method = RequestMethod.GET)
	public void boardWriteGET(BoardVO board, Model model) throws Exception{
	}
	
	@RequestMapping(value="/boardWrite", method = RequestMethod.POST)
	
	public String boardWritePOST(BoardVO board, RedirectAttributes rttr) throws Exception{
		service.write(board);  //湲� �옉�꽦 �꽌鍮꾩뒪 �샇異�
		return "redirect:/board/listPage?num=1";
		
	}
	
	//寃뚯떆湲� 議고쉶
	@RequestMapping(value="/boardRead", method=RequestMethod.GET)	//get�쑝濡� �럹�씠吏� �샇異�
		public void read(@RequestParam("bnum")int bnum, Model model)throws Exception{
		 // �씤�옄媛믪� �뙆�씪誘명꽣 媛믪쑝濡� 湲곕낯�궎�씤 bnum湲곗��쑝濡� Model�쓣 �궗�슜�븯�뿬 遺덈윭�샂
		model.addAttribute(service.read(bnum));
		
	}
	
	//寃뚯떆湲� �닔�젙get
	@RequestMapping(value="/boardModify", method=RequestMethod.GET)	//GET諛⑹떇�쑝濡� �럹�씠吏� �샇異�
		public void modifyGET(int bnum, Model model) throws Exception{
		model.addAttribute(service.read(bnum));
	}
	
	//寃뚯떆湲� �닔�젙post
	@RequestMapping(value="/boardModify", method=RequestMethod.POST)
	public String modifyPost(BoardVO board, RedirectAttributes rttr) throws Exception{
		service.modify(board);
		//湲� �닔�젙 �꽌鍮꾩뒪 �샇異�
		return "redirect:/board/listPage?num=1";
	}
	
	//寃뚯떆湲� �궘�젣
	@RequestMapping(value="/boardRemove", method=RequestMethod.POST)
	public String removePOST(@RequestParam("bnum")int bnum,RedirectAttributes rttr) throws Exception{
		service.remove(bnum);
		return "redirect:/board/listPage?num=1";
	}
	
	//寃뚯떆臾� 紐⑸줉 + �럹�씠吏� 異붽�
	@RequestMapping(value="/listPage", method=RequestMethod.GET)
	public void getListPage(Model model, @RequestParam("num")int num) throws Exception{
		

		int count = service.boardCount();		
		int postNum = 10;		
		int pageNum = (int)Math.ceil((double)count/postNum);		
		int displayPost = (num-1)*postNum;
		int pageNum_cnt = 10;
		int endPageNum = (int)(Math.ceil((double)num/(double)pageNum_cnt)*pageNum_cnt);
		int startPageNum = endPageNum-(pageNum_cnt-1);
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
		
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		model.addAttribute("select",num);
		
	}
	
}



