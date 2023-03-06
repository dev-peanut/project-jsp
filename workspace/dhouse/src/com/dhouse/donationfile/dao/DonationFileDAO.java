package com.dhouse.donationfile.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.donationfile.domain.DonationFileVO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class DonationFileDAO {
	public SqlSession sqlSession;
	
	public DonationFileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	첨부파일 추가
	public void insert(DonationFileVO donationFileVO) {
		sqlSession.insert("donationFile.insert", donationFileVO);
	}
}