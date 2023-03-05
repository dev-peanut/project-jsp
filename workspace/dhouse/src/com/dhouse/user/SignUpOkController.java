package com.dhouse.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.user.dao.UserDAO;
import com.dhouse.user.domain.UserVO;

public class SignUpOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		UserDAO userDAO = new UserDAO();
		UserVO userVO = new UserVO();
		Result result = new Result();
		
		userVO.setUserIdentification(req.getParameter("userIdentification"));
		userVO.setUserPassword(req.getParameter("userPassword"));
		userVO.setUserName(req.getParameter("userName"));
		userVO.setUserNickname(req.getParameter("userNickname"));
		userVO.setUserPhone(req.getParameter("userPhone"));
		userVO.setUserEmail(req.getParameter("userEmail"));
		
		userDAO.join(userVO);
		
		result.setPath(req.getContextPath() + "/login.user");
		result.setRedirect(true);
		
		return result;
	}

}
