package kr.go.puac.model;

import java.util.List;

import kr.go.puac.dto.SampleDTO;

public interface SampleDAO {
	
	public List<SampleDTO> sampleList() throws Exception;
	public SampleDTO sampleDetail(String id) throws Exception;
	public void addSample(SampleDTO sample) throws Exception;
	
}
