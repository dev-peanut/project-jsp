package com.dhouse.promotionboard.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;

public class PromotionBoardDAO {
	public SqlSession sqlSession;
	
	public PromotionBoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
