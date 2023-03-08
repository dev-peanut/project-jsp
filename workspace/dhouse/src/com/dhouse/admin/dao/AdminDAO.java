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
	
//	기부 게시글 목록
	public List<DonationBoardDTO> selectAllDonationBoard(Map<String, Object> pageMap){
		return sqlSession.selectList("admin.selectAllDonationBoard", pageMap);
	}
//	기부 게시글 총 개수
	public Long getTotalDonationBoard(Map<String, Object> searchMap) {
		return sqlSession.selectOne("admin.getTotalDonationBoard", searchMap);
	}
//	기부 게시글 상세 
	public DonationBoardDTO selectDonationBoard(Long donationBoardId) {
		return sqlSession.selectOne("admin.selectDonationBoard", donationBoardId);
	}
//	기부 게시글 삭제
	public void deleteDonationBoard(Long donationBoardId) {
		sqlSession.delete("admin.deleteDonationBoard", donationBoardId);
	}
//	홍보 게시글 목록
	public List<DonationBoardDTO> selectAllPromotionBoard(Map<String, Object> pageMap){
		return sqlSession.selectList("admin.selectAllDonationBoard", pageMap);
	}
//	홍보 게시글 총 개수
	public Long getTotalPromotionBoard(Map<String, Object> searchMap) {
		return sqlSession.selectOne("admin.getTotalPromotionBoard", searchMap);
	}
//	홍보 게시글 상세 
	public DonationBoardDTO selectPromotionBoard(Long promotionBoardId) {
		return sqlSession.selectOne("admin.selectPromotionBoard", promotionBoardId);
	}
//	홍보 게시글 삭제
	public void deletePromotionBoard(Long promotionBoardId) {
		sqlSession.delete("admin.deletePromotionBoard", promotionBoardId);
	}

}
