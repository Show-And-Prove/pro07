package kr.go.puac.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.go.puac.dto.BoardDTO;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<BoardDTO> boardList() throws Exception {
		return sqlSession.selectList("board.boardList");
	}

	@Transactional
	@Override
	public BoardDTO boardDetail(int bid) throws Exception {
		sqlSession.update("board.upCnt", bid);
		return sqlSession.selectOne("board.boardDetail",bid);
	}

	@Override
	public void boardInsert(BoardDTO dto) throws Exception {
		sqlSession.insert("board.boardInsert", dto);
	}

	@Override
	public void boardDelete(int bid) throws Exception {
		sqlSession.delete("board.boardDelete", bid);		
	}

	@Override
	public void boardEdit(BoardDTO dto) throws Exception {
		sqlSession.update("board.boardEdit", dto);
	}
	
	

}
