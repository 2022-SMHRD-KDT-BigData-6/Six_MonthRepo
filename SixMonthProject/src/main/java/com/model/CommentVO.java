package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CommentVO {
	
	private int cnum; // ��۹�ȣ
	private int pnum; // �۹�ȣ
	private String comments; // ��۳���
	private String id; // �ۼ��� ���̵�
	private String nick; // �ۼ��� �г���
	private String cdate; // �ۼ���¥
	private int good; // ����
	private String anony; //�͸�

}
