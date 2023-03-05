package com.dhouse.donationfile.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;

public class DonationFileDAO {
	public SqlSession sqlSession;
	
	public DonationFileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}