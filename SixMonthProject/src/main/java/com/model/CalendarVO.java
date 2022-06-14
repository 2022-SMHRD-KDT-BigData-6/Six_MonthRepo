package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CalendarVO {
	
	private String id;
	private String caltitle;
	private String start1;
	private String end1;
	private String textcolor;
	private String backgroundcolor;
	private String bordercolor;
	
}
