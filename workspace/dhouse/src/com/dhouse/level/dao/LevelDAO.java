package com.dhouse.level.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.file.domain.FileVO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class LevelDAO {
	public SqlSession sqlSession;
	
	public LevelDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(FileVO fileVO) {
		sqlSession.insert("file.insert", fileVO);
	}
}
