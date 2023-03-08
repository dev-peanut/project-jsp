package com.dhouse.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;

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
			
		}else if(target.equals("admin/foodList")){
			result = new Result();
			result.setPath("admin/foodListOk.admin");
			
		}else if(target.equals("admin/foodListOk")){
			result = new AdminFoodListOkController().execute(req, resp);
			
		}else if(target.equals("admin/foodDeleteOk")){
			result = new AdminFoodDeleteOkController().execute(req, resp);
			
		}else if(target.equals("admin/foodDetailOk")){
			result = new AdminFoodDetailOkController().execute(req, resp);
			
		}else if(target.equals("admin/promotionList")){
			result = new Result();
			result.setPath("admin/promotionListOk.admin");
			
		}else if(target.equals("admin/promotionListOk")){
			result = new AdminPromotionListOkController().execute(req, resp);
			
		}else if(target.equals("admin/promotionDeleteOk")){
			result = new AdminPromotionDeleteOkController().execute(req, resp);
			
		}else if(target.equals("admin/promotionDetailOk")){
			result = new AdminPromotionDetailOkController().execute(req, resp);
			
		}else if(target.equals("/admin/banner/list")){
			result = new Result();
			result.setPath("/admin/banner/listOk.admin");
			
		}else if(target.equals("/admin/banner/listOk")){
			result = new AdminBannerListOkController().execute(req, resp);
			
		}else if(target.equals("/admin/banner/listSearchOk")){
			result = new AdminBannerListSearchOkController().execute(req, resp);
			
		}else if(target.equals("/detailOk")){
			result = new AdminBannerDetailOkController().execute(req, resp);
			
		}else if(target.equals("/deleteOk")){
			result = new AdminBannerDeleteOkController().execute(req, resp);
			
		}else if(target.equals("/modifyOk")){
			result = new AdminBannerModifyOkController().execute(req, resp);
			
		}else if(target.equals("/admin/donationBoard/list")){
			result = new Result();
			result.setPath("/admin/donationBoard/listOk.admin");
			
		}else if(target.equals("/admin/donationBoard/listOk")){
			result = new AdminDonationBoardListOkController().execute(req, resp);
			
		}else if(target.equals("/admin/donationBoard/detailOk")){
			result = new AdminDonationBoardDetailOkController().execute(req, resp);
			
		}else if(target.equals("/admin/donationBoard/deleteOk")){
			result = new AdminDonationBoardDeleteOkController().execute(req, resp);
			
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
