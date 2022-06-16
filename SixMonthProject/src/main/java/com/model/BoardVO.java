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
	
	private int pnum;// �۹�ȣ 
	
	private String title;// ���� 
	private String content;// ���� 
	private String id;// �ۼ���  
	private String pdate; // ��¥
	private String nick; // �г���
	private int hit; // ��ȸ��
	private int good; // ����
	private String fileName; // ÷������
	private String anonymous; // �͸� üũ
	
	// �� �˻�
	public BoardVO(String title, String content, String nick) {
		this.title = title;
		this.content = content;
		this.nick = nick;
	}
	
	
	

	
}
