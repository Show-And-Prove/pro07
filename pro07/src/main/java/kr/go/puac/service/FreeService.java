package kr.go.puac.service;

import java.util.List;

import kr.go.puac.dto.FreeDTO;

public interface FreeService {

	public List<FreeDTO> freeList() throws Exception;
	public FreeDTO freeDetail(int fno) throws Exception;
	public void freeInsert(FreeDTO dto) throws Exception;
	public void freeDelete(int fno) throws Exception;
	public void freeEdit(FreeDTO dto) throws Exception;
}
