package kr.go.puac;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.go.puac.dto.SampleDTO;

@Repository
public class RestDAO {

	@Autowired
	SqlSession sqlSession;
	
	public List<SampleDTO> sampleList() throws Exception {
		return sqlSession.selectList("sample.sampleList");
	}

	public SampleDTO sampleDetail(String id) throws Exception {
		return sqlSession.selectOne("sample.sampleDetail", id);
	}

	public void addSample(SampleDTO sample) throws Exception {
		sqlSession.insert("sample.addSample", sample);
	}
	
}
