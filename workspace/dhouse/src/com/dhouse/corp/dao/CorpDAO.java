package com.dhouse.corp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.corp.domain.CorpDTO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class CorpDAO {
	public SqlSession sqlSession;
	
	public CorpDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	기업 목록
	public List<CorpDTO> selectAll(Map<String, Object> pageMap){
		return sqlSession.selectList("corp.selectAll", pageMap);
	}

//	기업 총 개수
	public Long getTotal() {
		return sqlSession.selectOne("corp.getTotal");
	}
	
	
}
