package com.dhouse.donationfile.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.donationfile.domain.DonationFileVO;
import com.dhouse.mybatis.config.MyBatisConfig;
import com.dhouse.promotionfile.domain.PromotionFileVO;

public class DonationFileDAO {
	public SqlSession sqlSession;
	
	public DonationFileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(DonationFileVO donationFileVO) {
		sqlSession.insert("donationFile.insert", donationFileVO);
	}
	
	public DonationFileVO select(Long donationBoardId) {
		return sqlSession.selectOne("donationFile.select", donationBoardId);
	}
	
	public void delete(Long donationBoardId) {
		sqlSession.delete("donationFile.delete", donationBoardId);
	}
}