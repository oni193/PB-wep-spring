package co.kr.playbowling.service;

import java.util.List;

import co.kr.playbowling.vo.*;

public interface BoardService {
	public void write(BoardVO board) throws Exception;
	public BoardVO read (int bnum) throws Exception;
	public void modify(BoardVO board) throws Exception;
	public void remove(int bnum) throws Exception;
	public List<BoardVO> listAll() throws Exception;
	public int boardCount() throws Exception;
	public List listPage(int displayPost, int postNum) throws Exception;
	
	
}