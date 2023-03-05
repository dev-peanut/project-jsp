package com.dhouse.promotionfile.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.file.domain.FileVO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class PromotionFileDAO {
	public SqlSession sqlSession;
	
	public PromotionFileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(FileVO fileVO) {
		sqlSession.insert("promotionFile.insert", fileVO);
	}
}
