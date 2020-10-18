package co.kr.playbowling.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import co.kr.playbowling.dao.*;
import co.kr.playbowling.vo.*;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Inject
	private ManagerDAO dao;

	@Override
	public List<MemberVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<BoardVO> blistAll() throws Exception {
		return dao.blistAll();
	}
	
	@Override
	public int boardCount() throws Exception {
		return dao.boardCount();
	}

	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		return dao.listPage(displayPost, postNum);
	}

	@Override
	public int memCount() throws Exception {
		return dao.memCount();
	}


}