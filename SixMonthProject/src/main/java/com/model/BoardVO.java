package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data	// 기본 메서드만 생성(Getter/Setter, toString)
@AllArgsConstructor //모든요소를 매개변수로 갖는 생성자.
@NoArgsConstructor //기본생성자(매개변수가 없는 생성자)
public class BoardVO {
	
	// 반드시 지킬 것!!
	// 필드의 이름과 테이블의 컬럼명이 일치할것 
	
	private int pnum;// 글번호 
	
	private String title;// 제목 
	private String content;// 내용 
	private String id;// 작성자  
	private String pdate; // 날짜
	private String nick; // 닉네임
	
	// private String good; // 공감
	
	private String fileName; // 첨부파일
	
	
}
