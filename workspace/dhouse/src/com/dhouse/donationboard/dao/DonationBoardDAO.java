package com.dhouse.donationboard.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;

public class DonationBoardDAO {
	public SqlSession sqlSession;
	
	public DonationBoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
