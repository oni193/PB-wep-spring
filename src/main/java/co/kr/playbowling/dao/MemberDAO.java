package co.kr.playbowling.dao;

import java.util.List;

import co.kr.playbowling.vo.MemberVO;

public interface MemberDAO {
	
	//�쉶�썝媛��엯
	public void register(MemberVO vo) throws Exception;
	
	//濡쒓렇�씤
	public MemberVO login(MemberVO vo) throws Exception;
	
	public int idChk(MemberVO vo)throws Exception;
}