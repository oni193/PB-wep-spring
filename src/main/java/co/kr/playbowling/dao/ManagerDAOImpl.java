package co.kr.playbowling.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import co.kr.playbowling.vo.BoardVO;
import co.kr.playbowling.vo.MemberVO;

@Repository
public class ManagerDAOImpl implements ManagerDAO {

	@Inject
	SqlSession sqlsession;
	private static String namespace = "mappers.managerMapper";

	@Override
	public List<MemberVO> listAll() {
		return sqlsession.selectList(namespace + ".listAll");
	}

	@Override
	public List<BoardVO> blistAll() {
		return sqlsession.selectList(namespace+".blistAll");
	}
	
	@Override
	public int boardCount() throws Exception {
		return sqlsession.selectOne(namespace+".boardCountM");
	}
	
	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		HashMap data = new HashMap();
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		return sqlsession.selectList(namespace+".listPageM",data);
	}

	@Override
	public int memCount() throws Exception {
		return sqlsession.selectOne(namespace+".memCount");
	}

}
