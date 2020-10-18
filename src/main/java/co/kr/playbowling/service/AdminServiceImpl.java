package co.kr.playbowling.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import co.kr.playbowling.dao.AdminDAO;
import co.kr.playbowling.dao.BoardDAO;
import co.kr.playbowling.vo.AdminVO;
import co.kr.playbowling.vo.MemberVO;

@Service
public class AdminServiceImpl implements AdminService {


	@Inject
	AdminDAO dao;
	BoardDAO Bdao;
	
	@Override
	public void register(AdminVO vo) throws Exception {
		dao.register(vo);		
	}
	
	@Override
	public AdminVO login(AdminVO vo) throws Exception {
		return dao.login(vo);
	}

	@Override
	public void boardDel(int bnum) throws Exception {
		Bdao.delete(bnum);
	}




}
