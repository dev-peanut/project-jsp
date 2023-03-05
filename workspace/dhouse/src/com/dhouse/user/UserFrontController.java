package com.dhouse.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;

public class UserFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;

		if (target.equals("signUp")) {
			result = new Result();
			result.setPath("/dhouse/user/signUp.jsp");

		} else if (target.equals("/signUpOk")) {
			result = new SignUpOkController().execute(req, resp);

		} else if (target.equals("/login")) {
			result = new Result();
			result.setPath("/dhouse/user/login.jsp");

		} else if (target.equals("/loginOk")) {
			result = new LoginOkController().execute(req, resp);

		} else if (target.equals("/checkIdOk")) {
			new CheckIdOkController().execute(req, resp);

		} else if (target.equals("/findIdOk")) {
			result = new FindIdOkController().execute(req, resp);

		} else if (target.equals("/findPasswordOk")) {
			result = new FindPasswordOkController().execute(req, resp);

		} else {
			System.out.println(target);
		}

		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}