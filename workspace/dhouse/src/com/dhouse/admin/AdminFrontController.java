package com.dhouse.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;
import com.dhouse.food.FoodDeleteOkController;
import com.dhouse.food.FoodDetailOkController;
import com.dhouse.food.FoodModifyOkController;
import com.dhouse.food.FoodWriteOkController;

public class AdminFrontController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;

		if(target.equals("/listOk")) {
			result = new AdminUserListOkController().execute(req, resp);
			
		}else if(target.equals("/detailOk")){
			result = new AdminUserDetailOkController().execute(req, resp);
			
		}else if(target.equals("/deleteOk")){
			result = new AdminUserDeleteOkController().execute(req, resp);
			
		}else if(target.equals("/modifyOk")){
			result = new AdminUserModifyOkController().execute(req, resp);
			
		}else if(target.equals("/listOk")){
			result = new AdminCorpListOkController().execute(req, resp);
			
		}else if(target.equals("/detailOk")){
			result = new AdminCorpDetailOkController().execute(req, resp);
			
		}else if(target.equals("/listOk")){
			result = new AdminFoodListOkController().execute(req, resp);
			
		}else if(target.equals("/deleteOk")){
			result = new AdminFoodDeleteOkController().execute(req, resp);
			
		}else if(target.equals("/detailOk")){
			result = new AdminFoodDetailOkController().execute(req, resp);
			
		}else if(target.equals("/modifyOk")){
			result = new AdminFoodModifyOkController().execute(req, resp);
			
		}else if(target.equals("/listOk")){
			result = new AdminBannerListOkController().execute(req, resp);
			
		}else if(target.equals("/detailOk")){
			result = new AdminBannerDetailOkController().execute(req, resp);
			
		}else if(target.equals("/deleteOk")){
			result = new AdminBannerDeleteOkController().execute(req, resp);
			
		}else if(target.equals("/modifyOk")){
			result = new AdminBannerModifyOkController().execute(req, resp);
			
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
