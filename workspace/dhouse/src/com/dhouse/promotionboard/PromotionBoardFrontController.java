package com.dhouse.promotionboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;

public class PromotionBoardFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("/promotion/listOk")) {
			result = new PromotionBoardListOkController().execute(req, resp);
			
		} else if(target.equals("/promotion/detail")) {
			result = new Result();
			result.setPath("/dhouse/promotion/promotion-detail.jsp");	
			
		} else if(target.equals("/promotion/detailOk")) {
			result = new PromotionBoardDetailOkController().execute(req, resp);
			
		} else if(target.equals("/promotion/update")) {
			result = new Result();
			result.setPath("/dhouse/promotion/promotion-update.jsp");
			
		} else if(target.equals("/promotion/updateOk")) {
			result = new PromotionBoardUpdateOkController().execute(req, resp);
			
		} else if(target.equals("/promotion/deleteOk")) {
			result = new PromotionBoardDeleteOkController().execute(req, resp);
			
		} else if(target.equals("/promotion/write")) {
			result = new Result();
			result.setPath("/dhouse/promotion/promotion-write.jsp");	
			
		} else if(target.equals("/promotion/writeOk")) {
			result = new PromotionBoardWriteOkController().execute(req, resp);
			
		} else {
			System.out.println(target);
		}
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}	
