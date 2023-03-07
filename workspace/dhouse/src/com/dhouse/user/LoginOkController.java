package com.dhouse.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.user.dao.UserDAO;

public class LoginOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		UserDAO userDAO = new UserDAO();
		HttpSession session = req.getSession();

		String userIdentification = req.getParameter("userIdentification");
		String userPassword = req.getParameter("userPassword");
		Long userId = userDAO.login(userIdentification, userPassword);
		String path = null;
		Result result = new Result();
		
		if(userId != null) {
			session.setAttribute("userId", userId);
			path = req.getContextPath() + "/user/main.user";
		}else {
			path = req.getContextPath() + "/user/login.user?login=false";
		}
		result.setPath(path);
		result.setRedirect(true);
		return result;
	}

}
