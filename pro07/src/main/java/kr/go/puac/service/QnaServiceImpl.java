package kr.go.puac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.puac.dto.QnaDTO;
import kr.go.puac.model.QnaDAO;

@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	QnaDAO qnaDAO;

	@Override
	public List<QnaDTO> qnaList() throws Exception {
		return qnaDAO.qnaList();
	}

	@Override
	public QnaDTO qnaDetail(int qno) throws Exception {
		return qnaDAO.qnaDetail(qno);
	}

	@Override
	public void questionWrite(QnaDTO dto) throws Exception {
		qnaDAO.questionWrite(dto);
	}

	@Override
	public void answerWrite(QnaDTO adto) throws Exception {
		qnaDAO.answerWrite(adto);
	}

	@Override
	public void qDelete(int qno) throws Exception {
		qnaDAO.qDelete(qno);
	}

	@Override
	public void qEdit(QnaDTO dto) throws Exception {
		qnaDAO.qEdit(dto);
	}
	
	
	
	
	
	
	
}
