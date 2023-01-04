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
	public List<QnaDTO> QnaList() throws Exception {
		return qnaDAO.QnaList();
	}
	
	
}
