package kr.go.puac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.go.puac.dto.FreeDTO;
import kr.go.puac.model.FreeDAO;

@Service
public class FreeServiceImpl implements FreeService {
	
	@Autowired
	FreeDAO freeDAO;

	@Override
	public List<FreeDTO> freeList() throws Exception {
		return freeDAO.freeList();
	}

	@Override
	public FreeDTO freeDetail(int fno) throws Exception {
		return freeDAO.freeDetail(fno);
	}

	@Override
	public void freeInsert(FreeDTO dto) throws Exception {
		freeDAO.freeInsert(dto);
	}

	@Override
	public void freeDelete(int fno) throws Exception {
		freeDAO.freeDelete(fno);
	}

	@Override
	public void freeEdit(FreeDTO dto) throws Exception {
		freeDAO.freeEdit(dto);
	}
	
	

}
