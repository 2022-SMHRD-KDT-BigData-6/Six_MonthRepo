package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
 
@Data 
@NoArgsConstructor
@AllArgsConstructor
public class MemberVO {
	
	// 회원정보 필드
	private String id;
	private String name;
	private String pw;
	private String email;
	private String nick;
	
}
