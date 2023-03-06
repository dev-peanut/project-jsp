package com.dhouse.promotionfile.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;
import com.dhouse.promotionboard.domain.PromotionBoardVO;
import com.dhouse.promotionfile.domain.PromotionFileVO;

public class PromotionFileDAO {
	public SqlSession sqlSession;
	
	public PromotionFileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(PromotionFileVO promotionFileVO) {
		sqlSession.insert("promotionFile.insert", promotionFileVO);
	}
	
	public PromotionFileVO select(Long promotionBoardId) {
		return sqlSession.selectOne("promotionFile.select", promotionBoardId);
	}
	
	public void delete(Long promotionBoardId) {
		sqlSession.delete("promotionFile.delete", promotionBoardId);
	}
}
