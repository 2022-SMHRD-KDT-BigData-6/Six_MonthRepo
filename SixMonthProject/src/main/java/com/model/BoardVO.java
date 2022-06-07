package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;

@Data	// �⺻ �޼��常 ����(Getter/Setter, toString)
@AllArgsConstructor //����Ҹ� �Ű������� ���� ������.
@NoArgsConstructor //�⺻������(�Ű������� ���� ������)
public class BoardVO {
	
	// �ݵ�� ��ų ��!!
	// �ʵ��� �̸��� ���̺��� �÷����� ��ġ�Ұ� 
	
	private int Pnum;// �۹�ȣ 
	
	private String title;// ���� 
	private String content;// ���� 
	private String id;// �ۼ���  
	private String Pdate; // ��¥
	
	// private String good; // ����
	
	private String fileName; // ÷������
	
	
}
