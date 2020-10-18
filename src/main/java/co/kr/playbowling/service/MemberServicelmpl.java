package co.kr.playbowling.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import co.kr.playbowling.dao.MemberDAO;
import co.kr.playbowling.vo.MemberVO;

@Service
public class MemberServicelmpl implements MemberService{

	@Inject MemberDAO dao;
	
	//�쉶�썝媛��엯
	@Override
	public void register(MemberVO vo) throws Exception {
		System.out.println("17");
		dao.register(vo);
		System.out.println("18");
	}

	//濡쒓렇�씤
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		/*
		 * System.out.println("-----------------------Service-----------------");
		 * System.out.println(vo);
		 */
		
		return dao.login(vo);
	}

	//아이디 중복 체크
	@Override
	public int idChk(MemberVO vo)throws Exception{
		System.out.println("16");
		int result = dao.idChk(vo);
		System.out.println("15");
		return result;
	}


}