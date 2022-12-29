package kr.go.puac.model;

import java.util.List;

import kr.go.puac.dto.BoardDTO;

public interface BoardDAO {

	public List<BoardDTO> boardList() throws Exception;
	public BoardDTO boardDetail(int bid) throws Exception;
}
