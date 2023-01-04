package kr.go.puac.service;

import java.util.List;

import kr.go.puac.dto.BoardDTO;


public interface BoardService {
	
	public List<BoardDTO> boardList() throws Exception;
	public BoardDTO boardDetail(int bid) throws Exception;
	public void boardInsert(BoardDTO dto) throws Exception;
	public void boardDelete(int bid) throws Exception;
	public void boardEdit(BoardDTO dto) throws Exception;
}
