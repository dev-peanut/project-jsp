package com.dhouse.promotionboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;
import com.dhouse.donationboard.DonationBoardDeleteOkController;
import com.dhouse.donationboard.DonationBoardDetailOkController;
import com.dhouse.donationboard.DonationBoardListOkController;
import com.dhouse.donationboard.DonationBoardModifyOkController;
import com.dhouse.donationboard.DonationBoardWriteOkController;

public class PromotionBoardFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;

		
		System.out.println(target);
		
		if(target.equals("/liskOk")) {
			result = new PromotionBoardListOkController().execute(req, resp);
			
		}else if(target.equals("/deleteOk")){
			result = new PromotionBoardDeleteOkController().execute(req, resp);
			
		}else if(target.equals("/detailOk")){
			result = new PromotionBoardDetailOkController().execute(req, resp);
			
		}else if(target.equals("/modifyOk")){
			result = new PromotionBoardModifyOkController().execute(req, resp);
			
		}else if(target.equals("/writeOk")){
			result = new PromotionBoardWriteOkController().execute(req, resp);

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
