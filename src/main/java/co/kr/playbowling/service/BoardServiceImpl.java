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
	
	@Override
	public void write(BoardVO board) throws Exception {
		dao.write(board);
	}

	@Override
	public BoardVO read(int bnum) throws Exception {
		dao.updateReadCount(bnum);
		return dao.read(bnum);		
	}

	@Override
	public void modify(BoardVO board) throws Exception {
		dao.update(board);
	}

	@Override
	public void remove(int bnum) throws Exception {
		dao.delete(bnum);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return dao.listAll();
		
	}

	@Override
	public int boardCount() throws Exception {
		return dao.boardCount();
	}

	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		return dao.listPage(displayPost, postNum);
	}


}
