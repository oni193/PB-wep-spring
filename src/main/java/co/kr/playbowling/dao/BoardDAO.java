package co.kr.playbowling.dao;

import java.util.List;

import co.kr.playbowling.vo.BoardVO;

public interface BoardDAO {	
	public void write(BoardVO vo) throws Exception;
	public BoardVO read(int bnum) throws Exception;
	public void update (BoardVO vo) throws Exception;
	public void delete(int bnum) throws Exception;
	public List<BoardVO> listAll() throws Exception;
	void updateReadCount(int bnum) throws Exception;
	public int boardCount() throws Exception;
	public List listPage(int displayPost, int postNum)throws Exception;

}
