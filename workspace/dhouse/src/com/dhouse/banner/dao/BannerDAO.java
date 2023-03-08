package com.dhouse.banner.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.banner.domain.BannerDTO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class BannerDAO {
	public SqlSession sqlSession;
	
	public BannerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<BannerDTO> selectAll(Map<String, Object> searchMap){
		return sqlSession.selectList("banner.selectAll", searchMap);
	}
	
	public Long getTotal() {
		return sqlSession.selectOne("banner.getTotal");
	}
}
