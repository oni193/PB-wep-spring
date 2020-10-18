package co.kr.playbowling.service;

import java.util.List;

import co.kr.playbowling.vo.*;

public interface ManagerService {
	public List<MemberVO> listAll() throws Exception;
	public List<BoardVO> blistAll() throws Exception;
	public int boardCount() throws Exception;
	public int memCount() throws Exception;
	public List listPage(int displayPost, int postNum) throws Exception;
	
	
}
