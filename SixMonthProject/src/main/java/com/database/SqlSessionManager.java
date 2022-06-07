package com.database;

import java.io.InputStream;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

//  config파일을 읽어와서 database와 연결하는 객체를 관리해주는 도구
public class SqlSessionManager {
		
	private static SqlSessionFactory sqlSessionFactory;

	static {
		try {
			// resource --> config.xml파일의 경로
			String resource = "com/database/config.xml";
			InputStream inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 다른 DAO파일에서 sqlSessionFactory를 꺼낼 수 있도록 하는 Getter
	public static SqlSessionFactory getSqlSessionFactory() {
		return sqlSessionFactory;
	}
}
