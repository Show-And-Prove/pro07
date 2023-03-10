package kr.go.puac.dto;

import lombok.Data;

@Data
public class QnaDTO {

	private int qno;
	private String title;
	private String content;
	private String author;
	private String regdate;
	private int lev;	//질문, 답변을 구분하는 depth
	private int parno;	//질문과 답변의 공통 번호
	private String sec;	//비밀글여부
	private int visited;	
	
}
