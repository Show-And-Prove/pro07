package kr.go.puac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.puac.dto.BoardDTO;
import kr.go.puac.model.BoardDAO;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	BoardDAO boardDAO;
	
	@Override
	public List<BoardDTO> boardList() throws Exception {

		return boardDAO.boardList();
	}

	@Override
	public BoardDTO boardDetail(int bid) throws Exception {
		
		return boardDAO.boardDetail(bid);
	}


	@Override
	public void boardInsert(BoardDTO dto) throws Exception {
		boardDAO.boardInsert(dto);
	}

	@Override
	public void boardDelete(int bid) throws Exception {
		boardDAO.boardDelete(bid);
	}

	@Override
	public void boardEdit(BoardDTO dto) throws Exception {
		boardDAO.boardEdit(dto);
	}
	
	
}
