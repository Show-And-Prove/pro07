package kr.go.puac.service;

import java.util.List;

import kr.go.puac.dto.QnaDTO;

public interface QnaService {

	public List<QnaDTO> qnaList() throws Exception;
	public QnaDTO qnaDetail(int qno) throws Exception;
	public void questionWrite(QnaDTO dto) throws Exception;
	public void answerWrite(QnaDTO adto) throws Exception;
	
}