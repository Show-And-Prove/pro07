package kr.go.puac.service;

import java.util.List;

import kr.go.puac.dto.SampleDTO;


public interface SampleService {
	
	public List<SampleDTO> sampleList() throws Exception;
	public SampleDTO sampleDetail(String id) throws Exception;
	public void addSample(SampleDTO sample) throws Exception;
}
