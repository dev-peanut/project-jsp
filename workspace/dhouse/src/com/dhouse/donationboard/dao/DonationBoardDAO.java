package com.dhouse.donationboard.dao;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.donationboard.domain.DonationBoardVO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class DonationBoardDAO {
	public SqlSession sqlSession;
	
	public DonationBoardDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
////		게시글 목록
//		public List<BoardDTO> selectAll(Map<String, Object> pageMap){
//			return sqlSession.selectList("board.selectAll", pageMap);
//		}
//		
////		게시글 총 개수
//		public Long getTotal(Map<String, Object> searchMap) {
//			return sqlSession.selectOne("board.getTotal", searchMap);
//		}
//		
////		게시글 조회
//		public BoardDTO select(Long boardId) {
//			return sqlSession.selectOne("board.select", boardId);
//		}
		
//		게시글 추가
		public void insert(DonationBoardVO donationBoardVO) {
			sqlSession.insert("donationBoard.insert", donationBoardVO);
		}
		
//		현재 시퀀스 조회
		public Long getCurrentSequence() {
			return sqlSession.selectOne("board.getCurrentSequence");
		}
		
////		게시글 수정
//		public void update(BoardVO boardVO) {
//			System.out.println(boardVO);
//			sqlSession.update("board.update", boardVO);
//		}
//
//		public void delete(Long boardId) {
//			sqlSession.delete("board.delete", boardId);
//		}
	
}
