package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommentVO {
	
	private int cnum;
	private int pnum;
	private String comments;
	private String id;
	private String nick;
	private String cdate;
	

}
