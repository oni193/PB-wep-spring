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

	@Inject // ����(�ɺθ���) ���
	BoardService service; // Service ȣ���� ���� ��ü����


	@RequestMapping(value = "/boardList", method = RequestMethod.GET) // �ּ� ȣ�� ��� . ȣ���Ϸ��� �ּ� �� REST ��ļ��� (GET)

	public String listAll(Model model) throws Exception { // �޼ҵ� ���ڰ��� model �������̽�(jsp���� �ɺθ���)
		model.addAttribute("list", service.listAll()); // jsp�� �ɺθ��� ����(���� ȣ��)
		return "/board/boardList";
	}


	//���ۼ�
	@RequestMapping(value="/boardWrite", method = RequestMethod.GET)
	public void boardWriteGET(BoardVO board, Model model) throws Exception{
	}
	
	@RequestMapping(value="/boardWrite", method = RequestMethod.POST)
	
	public String boardWritePOST(BoardVO board, RedirectAttributes rttr) throws Exception{
		service.write(board);  //�� �ۼ� ���� ȣ��
		return "redirect:/board/boardList";
		
	}
	
	@RequestMapping(value="/boardRead", method=RequestMethod.GET)	//get���� ������ ȣ��
		public void read(@RequestParam("bnum")int bnum, Model model)throws Exception{
		 // ���ڰ��� �Ķ���� ������ �⺻Ű�� bnum�������� Model�� ����Ͽ� �ҷ���
		model.addAttribute(service.read(bnum));
	}
	
	@RequestMapping(value="/boardModify", method=RequestMethod.GET)	//GET������� ������ ȣ��
		public void modifyGET(int bnum, Model model) throws Exception{
		model.addAttribute(service.read(bnum));
		//���� ���� ���б� ���� ȣ��
	}
	
	@RequestMapping(value="/boardModify", method=RequestMethod.POST)
	public String modifyPost(BoardVO board, RedirectAttributes rttr) throws Exception{
		service.modify(board);
		//�� ���� ���� ȣ��
		return "redirect:/board/boardList";
	}
	
	@RequestMapping(value="/boardRemove", method=RequestMethod.POST)
	public String removePOST(@RequestParam("bnum")int bnum,RedirectAttributes rttr) throws Exception{
		service.remove(bnum);
		return "redirect:/";
	}
	
	//�Խù� ��� + ����¡ �߰�
	@RequestMapping(value="/listPage", method=RequestMethod.GET)
	public void getListPage(Model model, @RequestParam("num")int num) throws Exception{
		
		//�Խù� �� ����
		int count = service.boardCount();		
		//�� �������� ����� �Խù� ����
		int postNum = 10;		
		//�ϴ� ����¡ ��ȣ([�Խù� �� ���� / �� �������� ����� ���� ] �� �ø�)
		int pageNum = (int)Math.ceil((double)count/postNum);		
		//����� �Խù�
		int displayPost = (num-1)*postNum;
		//�ѹ��� ǥ���� ����¡ ��ȣ�� ����
		int pageNum_cnt = 10;
		//ǥ�õǴ� ������ ��ȣ �� ������ ��ȣ
		int endPageNum = (int)(Math.ceil((double)num/(double)pageNum_cnt)*pageNum_cnt);
		//ǥ�õǴ� ������ ��ȣ �� ù���� ��ȣ
		int startPageNum = endPageNum-(pageNum_cnt-1);
		//������ ��ȣ ����
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
		
		//���� �� �� ��ȣ
		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		
		//���� �� ����
		model.addAttribute("prev", prev);
		model.addAttribute("next", next);
		
		//���� ������
		model.addAttribute("select",num);
		
	}
	



}



