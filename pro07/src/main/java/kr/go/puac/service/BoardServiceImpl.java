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



	
	
}
