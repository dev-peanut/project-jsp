package com.dhouse.food.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.food.domain.FoodVO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class FoodDAO {
	public SqlSession sqlSession;
	
	public FoodDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	식품기부하기 추가
	public void insert(FoodVO foodVO) {
		sqlSession.insert("food.insert", foodVO);
	}
	
//	현재 시퀀스 조회
	public Long getCurrentSequence() {
		return sqlSession.selectOne("food.getCurrentSequence");
	}
}
