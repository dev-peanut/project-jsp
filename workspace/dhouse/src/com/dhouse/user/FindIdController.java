package com.dhouse.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;

public class FindIdController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		String userIdentification = null, userPassword = null;
		boolean check = false;
		
		if(check) {
			req.setAttribute("userIdentification", userIdentification);
			req.setAttribute("userPassword", userPassword);
			result.setPath("/loginOk.user");
		}else {
			result.setPath("/dhouse/user/login.jsp");
		}
		return result;
	}

}

