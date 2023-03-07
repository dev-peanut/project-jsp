package com.dhouse.donationboard.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.donationboard.domain.DonationBoardDTO;
import com.dhouse.donationboard.domain.DonationBoardVO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class DonationBoardDAO {
	public SqlSession sqlSession;
	
	public DonationBoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
//	게시글 목록
	public List<DonationBoardDTO> selectAll(Map<String, Object> pageMap){
		return sqlSession.selectList("donationBoard.selectAll", pageMap);
	}
	
//	게시글 총 개수
	public Long getTotal(Map<String, Object> searchMap) {
		return sqlSession.selectOne("donationBoard.getTotal", searchMap);
	}
	
//	게시글 조회
	public DonationBoardDTO select(Long donationBoardId) {
		return sqlSession.selectOne("donationBoard.select", donationBoardId);
	}
	
//	게시글 추가
	public void insert(DonationBoardVO donationBoardVO) {
		sqlSession.insert("donationBoard.insert", donationBoardVO);
	}
	
//	현재 시퀀스 조회
	public Long getCurrentSequence() {
		return sqlSession.selectOne("donationBoard.getCurrentSequence");
	}
	
////	게시글 수정
//	public void update(BoardVO boardVO) {
//		System.out.println(boardVO);
//		sqlSession.update("board.update", boardVO);
//	}
//
//	public void delete(Long boardId) {
//		sqlSession.delete("board.delete", boardId);
	
//	메인페이지에 띄울 랭킹
	public List<DonationBoardDTO> selectRanking(){
		return sqlSession.selectList("donationBoard.selectRanking");
	}
	
//	메인페이지에 띄울 최신글
	public List<DonationBoardDTO> selectList(){
		return sqlSession.selectList("donationBoard.selectList");
	}
}
