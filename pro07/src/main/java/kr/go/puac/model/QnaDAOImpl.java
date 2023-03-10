package kr.go.puac.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import kr.go.puac.dto.QnaDTO;

@Repository
public class QnaDAOImpl implements QnaDAO {

	@Autowired
	SqlSession sqlSession;

	@Override
	public List<QnaDTO> qnaList() throws Exception {
		return sqlSession.selectList("qna.qnaList");
	}

	@Override
	@Transactional
	public QnaDTO qnaDetail(int qno) throws Exception {
		sqlSession.update("qna.upVisited", qno);
		return sqlSession.selectOne("qna.qnaDetail", qno);
	}

	@Override
	public void questionWrite(QnaDTO dto) throws Exception {
		sqlSession.insert("qna.questionWrite", dto);
	}

	@Override
	public void answerWrite(QnaDTO adto) throws Exception {
		sqlSession.insert("qna.answerWrite", adto);
	}

	@Override
	public void qDelete(int qno) throws Exception {
		sqlSession.delete("qna.qDelete",qno);
	}

	@Override
	public void qEdit(QnaDTO dto) throws Exception {
		sqlSession.update("qna.qEdit", dto);
	}
	
	
	
	
	
}
