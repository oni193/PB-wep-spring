package co.kr.playbowling.dao;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import co.kr.playbowling.vo.BoardVO;

import org.apache.ibatis.session.SqlSession;

@Repository
public class BoardDAOImpl implements BoardDAO {

    @Inject SqlSession sqlsession;
	private static String namespace = "mappers.boardMapper";
	 
	
	@Override
	public void write(BoardVO vo) throws Exception {
		String bid = vo.getBid();
		sqlsession.insert(namespace+".write", vo);
	}
	@Override
	public BoardVO read(int bnum) throws Exception {
		
		return sqlsession.selectOne(namespace+".read",bnum);

	}

	@Override
	public void update(BoardVO vo) throws Exception {
		sqlsession.update(namespace+".update",vo);
	}

	@Override
	public void delete(int bnum) throws Exception {
		sqlsession.delete(namespace+".delete", bnum);
	}

	@Override
	public List<BoardVO> listAll() throws Exception {
		return sqlsession.selectList(namespace+".listAll");
	}
	
	@Override
	public void updateReadCount(int bnum) throws Exception {
		sqlsession.update(namespace +".updateReadCount", bnum);
	}
	@Override
	public int boardCount() throws Exception {
		return sqlsession.selectOne(namespace+".boardCount");
	}
	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		HashMap data = new HashMap();
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return sqlsession.selectList(namespace+".listPage",data);
	}
	

}
