package com.dhouse.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;

public class MyPageFrontController extends HttpServlet {
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;

		System.out.println("어쩌라는거야");
		System.out.println("1. " + target.equals("/myPage/myPassword"));
		
		if(target.equals("/myPage/myPassword")) {
			System.out.println("2. " + target);
			result = new Result();
			result.setPath("/dhouse/user/myPassword.jsp");
			
		}else if(target.equals("/myPage/MyPasswordOk")) {
			System.out.println("2. " + target);
			result = new MyPasswordOkController().execute(req, resp);
			
		}else if(target.equals("/myPageWithdrawOk")) {
			System.out.println("2. " + target);
			result = new MyPageWithdrawOkController().execute(req, resp);
			
		}else if(target.equals("/updateNicknamePhoneEmail")) {
			System.out.println("2. " + target);
			result = new updateNicknamePhoneEmailOkController().execute(req, resp);

		}else if(target.equals("/myPageInfo")) {
			System.out.println("2. " + target);
			result = new myPageInfoController().execute(req, resp);

		}else if(target.equals("/updatePhotoCorpIntroduction")) {
			System.out.println("2. " + target);
			result = new updatePhotoCorpIntroductionController().execute(req, resp);

		}else if(target.equals("/myPageMain")) {
			System.out.println("2. " + target);
			result = new myPageMainController().execute(req, resp);
		}else {
			System.out.println("3. " + target);
			System.err.println("cant find path");
		}

		
		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}else {
			System.err.println("result == null");
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
}
