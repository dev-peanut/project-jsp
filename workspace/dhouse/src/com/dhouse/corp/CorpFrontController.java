package com.dhouse.corp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;
import com.dhouse.promotionboard.PromotionBoardDetailOkController;
import com.dhouse.promotionboard.PromotionBoardListOkController;

public class CorpFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;

		System.out.println("1. " + target);
		
		if(target.equals("/corp/listOk")) {
			System.out.println("2. " + target);
			
			result = new CorpListOkController().execute(req, resp);
		}else if(target.equals("/corp/list")){
			System.out.println("2. " + target);
			result = new CorpListController().execute(req, resp);
//			result.setPath("/dhouse/businessIntroduction/business-introduction.jsp");
		}else if(target.equals("/corp/detailOk")){
			System.out.println("2. " + target);
			result = new CorpDetailOkController().execute(req, resp);
			
		}else if(target.equals("/corp/write")){
			System.out.println("2. " + target);
			
		}else if(target.equals("/corp/writeOk")){
			System.out.println("2. " + target);
			
		}else if(target.equals("/corp/update")){
			System.out.println("2. " + target);
			
		}else if(target.equals("/corp/updateOk")){
			System.out.println("2. " + target);
			
		}else if(target.equals("/corp/greeting")){
			result = new CorpGreetingController().execute(req, resp);
		}
		
		else {
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