package com.dhouse.file.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.file.domain.FileVO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class FileDAO {
	public SqlSession sqlSession;
	
	public FileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(FileVO fileVO) {
		sqlSession.insert("file.insert", fileVO);
	}
}
