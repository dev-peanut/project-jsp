package com.dhouse.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;

public class NoticeFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;

		System.out.println("1. " + target);
		
		if(target.equals("/notice/question")) {
			System.out.println("2. " + target);
			result = new Result();
			result.setPath("/dhouse/notice/question.jsp");
			
		}else if(target.equals("/notice/list")){
			result = new Result();
			result.setPath("/notice/listOk.notice");
			
		}else if(target.equals("/notice/listOk")){
			result = new NoticeListOkController().execute(req, resp);
			
		}else if(target.equals("/notice/detail")){
			result = new Result();
			result.setPath("/notice/detailOk.notice");
			
		}else if(target.equals("/notice/detailOk")){
			result = new NoticeDetailOkController().execute(req, resp);
			
		}else {
			System.out.println("3. " + target);
			System.err.println("cant find path");
			
		}

		if (result != null) {
			if (result.isRedirect()) {
				System.out.println("redirect");
				resp.sendRedirect(result.getPath());
			} else {
				System.out.println("forward");
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}