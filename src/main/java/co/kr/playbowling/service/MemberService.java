package co.kr.playbowling.service;

import java.util.List;

import co.kr.playbowling.vo.*;

public interface MemberService {

	//�쉶�썝媛��엯
	public void register(MemberVO vo) throws Exception;
	
	//濡쒓렇�씤
	public MemberVO login(MemberVO vo) throws Exception;
	
	public int idChk(MemberVO vo)throws Exception;
}
