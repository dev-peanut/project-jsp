package com.dhouse.notice.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;
import com.dhouse.notice.domain.NoticeDTO;

public class NoticeDAO {
	public SqlSession sqlSession;
	
	public NoticeDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	공지사항 목록
	public List<NoticeDTO> selectAll(Map<String, Object> pageMap){
		return sqlSession.selectList("notice.selectAll", pageMap);
	}
	
//	공지사항 총 개수
	public Long getTotal() {
		return sqlSession.selectOne("notice.getTotal");
	}

	public NoticeDTO selectDetail(Long noticeId) {
		return sqlSession.selectOne("notice.selectDetail", noticeId);
	}
	
	
	
	
}
