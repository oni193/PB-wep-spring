package co.kr.playbowling.dao;

import java.util.List;

import co.kr.playbowling.vo.BoardVO;

public interface BoardDAO {	
	//寃뚯떆�뙋 �벐湲�
	public void write(BoardVO vo) throws Exception;
	
	//寃뚯떆�뙋 �씫湲�
	public BoardVO read(int bnum) throws Exception;
	
	//寃뚯떆�뙋湲� �닔�젙
	public void update (BoardVO vo) throws Exception;
	
	//寃뚯떆�뙋 湲� �궘�젣
	public void delete(int bnum) throws Exception;
	
	//湲� 紐⑸줉 議고쉶
	public List<BoardVO> listAll() throws Exception;
	
	//議고쉶�닔利앷�
	void updateReadCount(int bnum) throws Exception;
	
	//珥� 寃뚯떆臾� 媛��닔 利앷�
	public int boardCount() throws Exception;
	
	// �럹�씠吏뺤쿂由�
	public List listPage(int displayPost, int postNum)throws Exception;

}
