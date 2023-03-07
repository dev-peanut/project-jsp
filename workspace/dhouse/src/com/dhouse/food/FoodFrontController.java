package com.dhouse.food;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;
import com.dhouse.reply.ReplyDeleteOkController;
import com.dhouse.reply.ReplyDetailOkController;
import com.dhouse.reply.ReplyModifyOkController;
import com.dhouse.reply.ReplyWriteOkController;

public class FoodFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;

		
		System.out.println(target);
		
		if(target.equals("/applyOk")) {
			result = new FoodApplyOkController().execute(req, resp);
			
		}else if(target.equals("/deleteOk")){
			result = new FoodDeleteOkController().execute(req, resp);
			
		}else if(target.equals("/detailOk")){
			result = new FoodDetailOkController().execute(req, resp);
			
		}else if(target.equals("/modifyOk")){
			result = new FoodModifyOkController().execute(req, resp);
			
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