package com.dhouse.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.donationboard.domain.DonationBoardDTO;
import com.dhouse.food.domain.FoodDTO;
import com.dhouse.mybatis.config.MyBatisConfig;
import com.dhouse.promotionboard.domain.PromotionBoardDTO;

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
	public List<PromotionBoardDTO> selectAllPromotionBoard(Map<String, Object> pageMap){
		return sqlSession.selectList("admin.selectAllPromotionBoard", pageMap);
	}
//	홍보 게시글 총 개수
	public Long getTotalPromotionBoard(Map<String, Object> searchMap) {
		return sqlSession.selectOne("admin.getTotalPromotionBoard", searchMap);
	}
//	홍보 게시글 상세 
	public PromotionBoardDTO selectPromotionBoard(Long promotionBoardId) {
		return sqlSession.selectOne("admin.selectPromotionBoard", promotionBoardId);
	}
//	홍보 게시글 삭제
	public void deletePromotionBoard(Long promotionBoardId) {
		sqlSession.delete("admin.deletePromotionBoard", promotionBoardId);
	}
	
//	식품 게시글 목록
	public List<FoodDTO> selectAllFood(Map<String, Object> pageMap){
		return sqlSession.selectList("admin.selectAllFood", pageMap);
	}
//	식품 총 개수
	public Long getTotalFood(Map<String, Object> searchMap) {
		return sqlSession.selectOne("admin.getTotalFood", searchMap);
	}
//	식품 게시글 상세 
	public FoodDTO selectFood(Long foodId) {
		return sqlSession.selectOne("admin.selectFood", foodId);
	}
//	홍보 게시글 삭제
	public void deleteFood(Long foodId) {
		sqlSession.delete("admin.deleteFood", foodId);
	}

}
