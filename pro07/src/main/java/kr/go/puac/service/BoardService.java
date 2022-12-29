package kr.go.puac.service;

import java.util.List;

import kr.go.puac.dto.BoardDTO;


public interface BoardService {
	
	public List<BoardDTO> boardList() throws Exception;
	public BoardDTO boardDetail(int bid) throws Exception;
}
