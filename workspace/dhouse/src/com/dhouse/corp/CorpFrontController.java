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

		
		System.out.println(target);
		
		if(target.equals("/listOk")) {
			result = new CorpListOkController().execute(req, resp);
			
		}else if(target.equals("/detailOk")){
			result = new CorpDetailOkController().execute(req, resp);
			
		}else if(target.equals("/write")){
			
		}else if(target.equals("/writeOk")){
			
		}else if(target.equals("/update")){
			
		}else if(target.equals("/updateOk")){
			
		}else if(target.equals("corp/greeting")){
			result = new CorpGreetingController().execute(req, resp);
		}else {
			
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