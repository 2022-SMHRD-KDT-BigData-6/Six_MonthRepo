package com.mapper;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlSessionManager {
   
   // Connection Pool
   // SqlSessionFactory : SQL 연결을 만들어내고, 가지고있는 객체
   private static SqlSessionFactory sqlSessionFactory;

   // 프로그램이 시작되자마자
   // static변수들이 할당되자마자 실행
   static {
      
      try {
         // resource --> config.xml파일의 경로
         String resource = "kr/smhrd/mapper/config.xml";
         InputStream inputStream = Resources.getResourceAsStream(resource);
         sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
      } catch (Exception e) {
         e.printStackTrace();
      }

   }
   
   // 다른 DAO파일에서 sqlSessionFactory를 꺼낼 수 있도록 하는
   // Getter 
   public static SqlSessionFactory getSqlSessionFactory() {
      return sqlSessionFactory;
   }

}