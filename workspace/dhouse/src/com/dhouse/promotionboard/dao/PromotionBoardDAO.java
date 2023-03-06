package com.dhouse.promotionboard.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;
import com.dhouse.promotionboard.domain.PromotionBoardDTO;
import com.dhouse.promotionboard.domain.PromotionBoardVO;

public class PromotionBoardDAO {
	public SqlSession sqlSession;
	
	public PromotionBoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	게시글 목록
	public List<PromotionBoardDTO> selectAll(){
		return sqlSession.selectList("promotionBoard.selectAll");
	}
	
//	게시글 추가
	public void insert(PromotionBoardVO promotionBoardVO) {
		sqlSession.insert("promotionBoard.insert", promotionBoardVO);
	}
	
	
//	게시글 삭제
	public void delete(Long promotionBoardId){
		sqlSession.delete("promotionBoard.delete", promotionBoardId);
	}
	
//	게시글 수정
	public void update(PromotionBoardVO promotionBoardVO){
		sqlSession.update("promotionBoard.update", promotionBoardVO);
	}
	
//	게시글 조회
	public PromotionBoardDTO select(Long promotionBoardId) {
		return sqlSession.selectOne("promotionBoard.select", promotionBoardId);
	}
	
	public Long getCurrentSequence() {
		return sqlSession.selectOne("promotionBoard.getCurrentSequence");
	}
}
