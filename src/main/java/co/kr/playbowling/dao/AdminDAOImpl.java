package co.kr.playbowling.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import co.kr.playbowling.vo.BoardVO;
import co.kr.playbowling.vo.AdminVO;
import co.kr.playbowling.vo.MemberVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Inject
	SqlSession sqlsession;
	private static String namespace = "mappers.adminMapper";
	
	@Override
	public void register(AdminVO vo) throws Exception {
		 sqlsession.insert(namespace + ".AdminRegister", vo);
	}

	//id == null -> false 
	//id != null -> true
	

	@Override
	public AdminVO login(AdminVO vo) throws Exception {		
		return sqlsession.selectOne(namespace + ".AdminLogin", vo); 
		
	}

	@Override
	public void boardDel(int bnum) throws Exception {
		sqlsession.delete(namespace+".delete",bnum);
	}

	
}
