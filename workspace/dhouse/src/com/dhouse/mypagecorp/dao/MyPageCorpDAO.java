package com.dhouse.mypagecorp.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;

public class MyPageCorpDAO {
	public SqlSession sqlSession;
	
	public MyPageCorpDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}