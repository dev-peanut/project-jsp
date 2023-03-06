package com.dhouse.banner.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;

public class BannerDAO {
	public SqlSession sqlSession;
	
	public BannerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
