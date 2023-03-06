package com.dhouse.mypage.dao;


import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;
import com.dhouse.mypage.domain.MyPageDTO;
import com.dhouse.user.domain.UserVO;

public class MyPageDAO {
	public SqlSession sqlSession;
	
	public MyPageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	//	비밀번호 수정
	public void updatePassword(String userPassword) {
		 sqlSession.update("passwordUpdate.myPage", userPassword);
	}
	
	//회원 탈퇴
	public void delete(Long userId) {
		 sqlSession.delete("delete.myPage", userId);
	}

	//닉네임, 이메일, 휴대폰 수정
	public void updatenicknamePhoneEmail(UserVO userVO) {
		 sqlSession.update("updatenicknamePhoneEmail.myPage", userVO);
	}
	
	//닉네임 중복검사(ajax) 추후에 하기
	public void checkNickname(String userNickname) {
		sqlSession.selectOne(userNickname);
	}
	
	//카운트 출력
	public void countPrint(MyPageDTO myPageDTO) {
		sqlSession.selectMap("countMyPagePersonal", null);
		
	}
	
	
}
	