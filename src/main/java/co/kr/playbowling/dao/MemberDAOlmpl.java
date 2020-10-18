package co.kr.playbowling.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.kr.playbowling.vo.MemberVO;



@Repository
public class MemberDAOlmpl implements MemberDAO {

	
	  @Inject SqlSession sql;
	  
	  private static String namespace = "mappers.memberMapper";
	 
	
	@Override
	public void register(MemberVO vo) throws Exception {
		System.out.println("13");
		 sql.insert(namespace + ".register", vo);
		System.out.println("14");
	}

	
	//濡쒓렇�씤泥섎━
	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		/*
		 * System.out.println("-------------------DAO-------------------");
		 * System.out.println(vo);
		 */
		
		return sql.selectOne(namespace + ".login", vo); 
		
	}


	@Override
	public int idChk(MemberVO vo) throws Exception {
		System.out.println("11");
		int result=sql.selectOne(namespace+".idChk",vo);
		System.out.println("12");
		return result;
	}


	

}