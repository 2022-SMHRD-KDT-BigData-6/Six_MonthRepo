package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommentVO {
	
	private int cnum; // 댓글번호
	private int pnum; // 글번호
	private String comments; // 댓글내용
	private String id; // 작성자 아이디
	private String nick; // 작성자 닉네임
	private String cdate; // 작성날짜
	private int good; // 공감
	private String anony; //익명

}
