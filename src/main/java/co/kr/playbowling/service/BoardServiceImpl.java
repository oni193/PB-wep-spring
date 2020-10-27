package co.kr.playbowling.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import co.kr.playbowling.dao.BoardDAO;
import co.kr.playbowling.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService{
	
	@Inject
	private BoardDAO dao;
	
	// 寃뚯떆湲� �벐湲�
	@Override
	public void write(BoardVO board) throws Exception {
		dao.write(board);
	}
	
	//寃뚯떆湲� 議고쉶
	@Override
	public BoardVO read(int bnum) throws Exception {
		dao.updateReadCount(bnum);
		return dao.read(bnum);		
	}

	//寃뚯떆湲� �닔�젙
	@Override
	public void modify(BoardVO board) throws Exception {
		dao.update(board);
	}

	//寃뚯떆湲� �궘�젣
	@Override
	public void remove(int bnum) throws Exception {
		dao.delete(bnum);
	}

	//寃뚯떆湲� 紐⑸줉
	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();
		
	}

	//珥� 寃뚯떆臾� 媛��닔 利앷�
	@Override
	public int boardCount() throws Exception {
		return dao.boardCount();
	}

	//�럹�씠吏뺤쿂由�
	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		return dao.listPage(displayPost, postNum);
	}


}
