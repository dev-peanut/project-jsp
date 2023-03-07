package com.dhouse.corp.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.corp.domain.CorpDTO;
import com.dhouse.corp.domain.CorpVO;
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

//	다음 페이지 유무(무한 스크롤)
	public boolean isNextPage(Map<String, Object> pageMap) {
		return sqlSession.selectList("corp.isNextPage", pageMap).size() != 0;
	}
	
//	기업 상세 소개 - detail - 랭킹이랑 group by 함수 사용 제외 부분
	public List<CorpDTO> selectDetail(Long userId) {
		return sqlSession.selectList("corp.selectDetail", userId);
	}
	
//	기업 상세 소개 - ranking - 랭킹이랑 group by 사용 부분
	public CorpDTO selectRanking(Long userId) {
		return sqlSession.selectOne("corp.selectRanking", userId);
	}

//	기업회원가입 기업 정보 추가
	public void insertCorp(CorpVO corpVO) {
		sqlSession.insert("user.insertCorp", corpVO);
	}
	
	
}
