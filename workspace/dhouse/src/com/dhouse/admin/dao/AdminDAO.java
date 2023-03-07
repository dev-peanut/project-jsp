package com.dhouse.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.corp.domain.CorpDTO;
import com.dhouse.donationboard.domain.DonationBoardDTO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class AdminDAO {
	public SqlSession sqlSession;
	
	public AdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	기업 목록
	public List<DonationBoardDTO> selectAllDonationBoard(Map<String, Object> pageMap){
		return sqlSession.selectList("admin.selectAll", pageMap);
	}

	public Long getTotalDonationBoard(Map<String, Object> searchMap) {
		return sqlSession.selectOne("admin.getTotal", searchMap);
	}

	public DonationBoardDTO selectDonationBoard(Long donationBoardId) {
		return sqlSession.selectOne("admin.selectDonationBoard", donationBoardId);
	}

	public void deleteDonationBoard(Long donationBoardId) {
		sqlSession.delete("admin.deleteDonationBoard", donationBoardId);
	}

}
