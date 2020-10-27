package co.kr.playbowling.service;

import java.util.List;

import co.kr.playbowling.vo.*;

public interface BoardService {
	//寃뚯떆湲��벐湲�
	public void write(BoardVO board) throws Exception;
	
	//寃뚯떆湲� �씫湲�
	public BoardVO read (int bnum) throws Exception;
	
	//寃뚯떆湲� �닔�젙
	public void modify(BoardVO board) throws Exception;
	
	//寃뚯떆湲� �궘�젣
	public void remove(int bnum) throws Exception;
	
	//寃뚯떆湲� 紐⑸줉
	public List<BoardVO> listAll() throws Exception;
	
	//珥� 寃뚯떆臾� 媛��닔 利앷�
	public int boardCount() throws Exception;
	
	//�럹�씠吏뺤쿂由�
	public List listPage(int displayPost, int postNum) throws Exception;

	
}