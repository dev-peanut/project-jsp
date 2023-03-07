package com.dhouse.mypage.dao;


import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.corp.domain.CorpVO;
import com.dhouse.mybatis.config.MyBatisConfig;
import com.dhouse.mypage.domain.MyPageDTO;
import com.dhouse.user.domain.UserVO;

public class MyPageDAO {
	public SqlSession sqlSession;
	
	public MyPageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	//	비밀번호 수정
	public void updatePassword(String userPassword, Long userId) {
		Map<Object, Object> map = new HashMap<Object, Object>();
		map.put("userPassword", userPassword);
		map.put("userId", userId);
		 sqlSession.update("myPage.passwordUpdate", map);
	}
	
	//회원 탈퇴
	public void delete(Long userId) {
		 sqlSession.delete("myPage.delete", userId);
	}

	//닉네임, 이메일, 휴대폰 수정
	public void updateNicknamePhoneEmail(UserVO userVO) {
		 sqlSession.update("myPage.updateNicknamePhoneEmail", userVO);
	}
	
	//닉네임 중복검사(ajax) 추후에 하기
	public void checkNickname(String userNickname) {
		sqlSession.selectOne(userNickname);
	}
	
	/*
	 * 카운트 출력 public void countPrint(MyPageDTO myPageDTO) {
	 * sqlSession.selectMap("countMyPagePersonal", null); }
	 */
	
	public void updatePhotoCorpIntroduction(CorpVO corpVO) {
		 sqlSession.update("myPage.updatePhotoCorpIntroduction", corpVO);
	}
	
	public MyPageDTO select(Long userId) {
		return sqlSession.selectOne("myPage.select", userId);
		
	}
	
	
}
	