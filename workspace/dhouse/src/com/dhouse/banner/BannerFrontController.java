package com.dhouse.banner;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;
import com.dhouse.corp.CorpDetailOkController;
import com.dhouse.corp.CorpGreetingController;
import com.dhouse.corp.CorpListOkController;

public class BannerFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;

		
		System.out.println(target);
		
		if(target.equals("/applyOk")) {
			result = new BannerApplyOkController().execute(req, resp);
			
		}else if(target.equals("/deleteOk")){
			result = new BannerDeleteOkController().execute(req, resp);
			
		}else if(target.equals("/detailOk")){
			result = new BannerDetailOkController().execute(req, resp);
			
		}else if(target.equals("/modifyOk")){
			result = new BannerModifyOkController().execute(req, resp);
			
		}else if(target.equals("/paymentOk")){
			result = new BannerPaymentOkController().execute(req, resp);

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
