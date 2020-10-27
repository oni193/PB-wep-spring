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
	 
	//寃뚯떆湲� �벐湲�
	@Override
	public void write(BoardVO vo) throws Exception {
		String bid = vo.getBid();
		sqlsession.insert(namespace+".write", vo);
	}
	
	// 寃뚯떆湲� �씫湲�
	@Override
	public BoardVO read(int bnum) throws Exception {
		
		return sqlsession.selectOne(namespace+".read",bnum);

	}
	
	//寃뚯떆湲� �닔�젙
	@Override
	public void update(BoardVO vo) throws Exception {
		sqlsession.update(namespace+".update",vo);
	}

	@Override
	public void delete(int bnum) throws Exception {
		sqlsession.delete(namespace+".delete", bnum);
	}

	//寃뚯떆湲� 紐⑸줉
	@Override
	public List<BoardVO> listAll() throws Exception {
		return sqlsession.selectList(namespace+".listAll");
	}
	
	// 議고쉶�닔 利앷�
	@Override
	public void updateReadCount(int bnum) throws Exception {
		sqlsession.update(namespace +".updateReadCount", bnum);
	}
	
	//珥� 寃뚯떆臾� 媛��닔 利앷�
	@Override
	public int boardCount() throws Exception {
		return sqlsession.selectOne(namespace+".boardCount");
	}
	
	//�럹�씠吏뺤쿂由�
	@Override
	public List listPage(int displayPost, int postNum) throws Exception {
		HashMap data = new HashMap();
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return sqlsession.selectList(namespace+".listPage",data);
	}
	

}
