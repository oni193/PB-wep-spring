package co.kr.playbowling.dao;

import java.util.List;

import co.kr.playbowling.vo.BoardVO;
import co.kr.playbowling.vo.AdminVO;
import co.kr.playbowling.vo.MemberVO;

public interface AdminDAO {
	public void register(AdminVO vo) throws Exception;
	public AdminVO login(AdminVO vo) throws Exception;//로그인 체크  
	public void boardDel(int bnum) throws Exception;
}
