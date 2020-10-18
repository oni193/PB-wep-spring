package co.kr.playbowling.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import co.kr.playbowling.vo.*;

public interface AdminService {
	public void register(AdminVO vo) throws Exception;
	public AdminVO login(AdminVO vo) throws Exception;  //관리자 로그인을 체크하는 메소드 
	public void boardDel(int bnum) throws Exception;
}
