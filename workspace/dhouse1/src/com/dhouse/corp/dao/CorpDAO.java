package com.dhouse.corp.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;

public class CorpDAO {
	public SqlSession sqlSession;
	
	public CorpDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
