package com.dhouse.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.mypage.dao.MyPageDAO;
import com.dhouse.user.domain.UserVO;

public class updateNicknamePhoneEmailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		UserVO userVO = new UserVO();
		MyPageDAO myPageDAO = new MyPageDAO();
		Result result = new Result();

		System.out.println("들어옴");

		// Long userId = Long.valueOf(req.getParameter("userId"));
		req.getSession().setAttribute("userId", 23L);

		// 입력값 userVO에 세팅
		// userVO.setuserId(userId); //->1L?
		
		 userVO.setuserId(23L);
		 userVO.setUserNickname(req.getParameter("nickName"));
		 userVO.setUserPhone(req.getParameter("mobileNumber"));
		 userVO.setUserEmail(req.getParameter("userEmailAddress"));
		 

		// dao 실행
		myPageDAO.updateNicknamePhoneEmail(userVO);

		result.setPath(req.getContextPath() + "/dhouse/user/updatePhotoCorpIntroduction.jsp");
		result.setRedirect(true);

		return result;
	}

}
