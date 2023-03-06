package com.dhouse.donationboard.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.donationboard.domain.DonationBoardDTO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class DonationBoardDAO {
	public SqlSession sqlSession;
	
	public DonationBoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	메인페이지에 띄울 랭킹
	public List<DonationBoardDTO> selectRanking(){
		return sqlSession.selectList("donationBoard.selectRanking");
	}
	
//	메인페이지에 띄울 최신글
	public List<DonationBoardDTO> selectList(){
		return sqlSession.selectList("donationBoard.selectList");
	}
}
