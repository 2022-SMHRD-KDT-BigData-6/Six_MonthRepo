package com.database;

import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//  config������ �о�ͼ� database�� �����ϴ� ��ü�� �������ִ� ����
public class SqlSessionManager {
		
	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {
			// resource --> config.xml������ ���
			String resource = "com/database/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// �ٸ� DAO���Ͽ��� sqlSessionFactory�� ���� �� �ֵ��� �ϴ� Getter
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
}
