package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
@Data	// 기본 메서드만 생성(Getter/Setter, toString)
@AllArgsConstructor //모든요소를 매개변수로 갖는 생성자.
@NoArgsConstructor //기본생성자(매개변수가 없는 생성자)
@RequiredArgsConstructor //NonNull이 붙은 요소만 매개변수로 갖는 생성자 
public class BoardVO {
	
	// 반드시 지킬 것!!
	// 필드의 이름과 테이블의 컬럼명이 일치할것 
	
	private int pnum;// 글번호 
	
	private String title;// 제목 
	@NonNull
	private String content;// 내용 
	@NonNull
	private String writer;// 작성자  
	@NonNull
	private String pdate; //  
	@NonNull
	private String id; //아이디 
	
	private String good;
	
	private String fileName; // 첨부파일
	
	
}
