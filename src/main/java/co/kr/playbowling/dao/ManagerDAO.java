package co.kr.playbowling.dao;

import java.util.List;

import co.kr.playbowling.vo.BoardVO;
import co.kr.playbowling.vo.AdminVO;
import co.kr.playbowling.vo.MemberVO;

public interface ManagerDAO {
	public List<MemberVO> listAll();
	public List<BoardVO> blistAll();
	public int boardCount() throws Exception;
	public List listPage(int displayPost, int postNum)throws Exception;
	public int memCount() throws Exception;

}
