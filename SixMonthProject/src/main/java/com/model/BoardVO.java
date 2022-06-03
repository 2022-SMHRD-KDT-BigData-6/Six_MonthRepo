package com.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
@Data	// �⺻ �޼��常 ����(Getter/Setter, toString)
@AllArgsConstructor //����Ҹ� �Ű������� ���� ������.
@NoArgsConstructor //�⺻������(�Ű������� ���� ������)
@RequiredArgsConstructor //NonNull�� ���� ��Ҹ� �Ű������� ���� ������ 
public class BoardVO {
	
	// �ݵ�� ��ų ��!!
	// �ʵ��� �̸��� ���̺��� �÷����� ��ġ�Ұ� 
	
	private int pnum;// �۹�ȣ 
	
	private String title;// ���� 
	@NonNull
	private String content;// ���� 
	@NonNull
	private String writer;// �ۼ���  
	@NonNull
	private String pdate; //  
	@NonNull
	private String id; //���̵� 
	
	private String good;
	
	private String fileName; // ÷������
	
	
}
