package com.dhouse.user.dao;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.dhouse.mybatis.config.MyBatisConfig;
import com.dhouse.user.domain.UserVO;

public class UserDAO {
	public SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
//	아이디 중복검사
	public boolean checkId(String userIdentification) {
		return sqlSession.selectOne("user.checkId", userIdentification) != null;
	}
	
//	이메일 중복검사
	public boolean checkEmail(String userEmail) {
		return sqlSession.selectOne("user.checkEmail", userEmail) != null;
	}
	
//	회원가입
	public void join(UserVO userVO) {
		sqlSession.insert("user.join", userVO);
	}
	
//	로그인
	public Long login(String userIdentification, String userPassword) {
		Map<String, String> loginMap = new HashMap<String, String>();
		loginMap.put("userIdentification", userIdentification);
		loginMap.put("userPassword", userPassword);
		return sqlSession.selectOne("user.login", loginMap);
	}

	public Long getSequence() {
		return sqlSession.selectOne("user.getCurrentSequence");
	}
	
}
