package com.dhouse.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.mypage.dao.MyPageDAO;
import com.dhouse.user.domain.UserVO;

public class myIdOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		UserVO userVO = new UserVO();
		MyPageDAO myPageDAO = new MyPageDAO();
		Result result = new Result();
	
		Long userId = Long.valueOf(req.getParameter("1L"));

		//userVO에 세팅
		userVO.setUserId(userId);
		userVO.setUserNickname(req.getParameter("userNickname"));
		userVO.setUserPhone(req.getParameter("userPhone"));
		userVO.setUserEmail(req.getParameter("userEmail"));
		
		//dao 실행
		myPageDAO.updatenicknamePhoneEmail(userVO);
		
		//result
		result.setPath(req.getContextPath() + "/user/profileUpdate.myPage");
		result.setRedirect(true);
		
		return result;
	}

}
