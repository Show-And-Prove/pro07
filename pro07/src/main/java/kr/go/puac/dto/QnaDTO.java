package kr.go.puac.dto;

import lombok.Data;

@Data
public class QnaDTO {

	private int qno;
	private String title;
	private String content;
	private String author;
	private String regdate;
	private int lev;
	private int parno;
	private String sec;
	private int visited;
	
}