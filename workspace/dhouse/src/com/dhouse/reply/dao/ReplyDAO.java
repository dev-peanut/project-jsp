package com.dhouse.reply.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;

public class ReplyDAO {
	public SqlSession sqlSession;
	
	public ReplyDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
