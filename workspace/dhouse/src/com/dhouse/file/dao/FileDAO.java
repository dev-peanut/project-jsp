package com.dhouse.file.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.file.domain.FileVO;
import com.dhouse.mybatis.config.MyBatisConfig;

public class FileDAO {
	public SqlSession sqlSession;
	
	public FileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	
//	기부 게시글 첨부파일 조회
	public List<FileVO> selectDonationBoard(Long donationBoardId) {
		return sqlSession.selectList("file.selectDonationBoard", donationBoardId);
	}
	
//	기부 게시글 첨부파일 삭제
	public void deleteDonationBoard(Long donationBoardId) {
		sqlSession.delete("file.deleteDonationBoard", donationBoardId);
	}
	
	
//	홍보 게시글 첨부파일 조회
	public List<FileVO> selectPromotionBoard(Long promotionBoardId) {
		return sqlSession.selectList("file.selectPromotionBoard", promotionBoardId);
	}
	
//	홍보 게시글 첨부파일 삭제
	public void deletePromotionBoard(Long promotionBoardId) {
		sqlSession.delete("file.deletePromotionBoard", promotionBoardId);
	}
	
	
}
