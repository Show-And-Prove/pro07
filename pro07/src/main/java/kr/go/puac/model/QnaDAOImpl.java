package kr.go.puac.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
	public QnaDTO qnaDetail(int qno) throws Exception {
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
	
	
	
	
}