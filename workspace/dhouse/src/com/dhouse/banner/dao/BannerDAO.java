package com.dhouse.banner.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.banner.domain.BannerDTO;
import com.dhouse.banner.domain.BannerVO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class BannerDAO {
	public SqlSession sqlSession;
	
	public BannerDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<BannerDTO> selectAll(Map<String, Object> searchMap){
		return sqlSession.selectList("banner.selectAll", searchMap);
	}
	
	public BannerDTO select(Long bannerId) {
		return sqlSession.selectOne("banner.select", bannerId);
	}
	
	public Long getTotal() {
		return sqlSession.selectOne("banner.getTotal");
	}
	
	public void update(BannerVO bannerVO) {
		sqlSession.update("banner.update", bannerVO);
	}

	public void delete(Long bannerId) {
		sqlSession.delete("banner.delete", bannerId);
	}
}
