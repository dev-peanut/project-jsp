package com.dhouse.file;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;
import com.dhouse.promotionboard.PromotionBoardDetailOkController;
import com.dhouse.promotionboard.PromotionBoardListOkController;
import com.dhouse.promotionboard.PromotionBoardUpdateOkController;
import com.dhouse.promotionboard.PromotionBoardWriteOkController;

public class FileFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("")) {
			result = new PromotionBoardListOkController().execute(req, resp);
			
		} else if(target.equals("")) {
			result = new Result();
			result.setPath("/dhouse/promotion/promotion-detail.jsp");	
			
		} else if(target.equals("")) {
			result = new PromotionBoardWriteOkController().execute(req, resp);
			
		} else {
			System.out.println(target);
		}
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
