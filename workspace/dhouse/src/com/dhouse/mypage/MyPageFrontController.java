package com.dhouse.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;
import com.dhouse.admin.AdminBannerDeleteOkController;
import com.dhouse.admin.AdminBannerDetailOkController;
import com.dhouse.admin.AdminBannerListOkController;
import com.dhouse.admin.AdminBannerModifyOkController;
import com.dhouse.admin.AdminCorpDetailOkController;
import com.dhouse.admin.AdminCorpListOkController;
import com.dhouse.admin.AdminFoodDeleteOkController;
import com.dhouse.admin.AdminFoodDetailOkController;
import com.dhouse.admin.AdminFoodListOkController;
import com.dhouse.admin.AdminFoodModifyOkController;
import com.dhouse.admin.AdminUserDeleteOkController;
import com.dhouse.admin.AdminUserDetailOkController;
import com.dhouse.admin.AdminUserListOkController;
import com.dhouse.admin.AdminUserModifyOkController;

public class MyPageFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath + "/", "").split("\\.")[0];
		Result result = null;

     	req.getSession().setAttribute("userId", 1L);
		
		System.out.println("1. " + target);
		if(target.equals("/myPassword")) {
			System.out.println("2. " + target);
			result = new MyPasswordController().execute(req, resp);
		}else if(target.equals("/myPasswordOk")) {
			System.out.println("2. " + target);
			result = new MyPasswordOkController().execute(req, resp);
			
		}else if(target.equals("/myPageWithdraw")) {
			System.out.println("2. " + target);
			result = new MyPageWithdrawOkController().execute(req, resp);
			
		}else if(target.equals("/myId")) {
			System.out.println("2. " + target);
			result = new myIdOkController().execute(req, resp);
			
		}else if(target.equals("/myPageInfo")) {
			System.out.println("2. " + target);
			result = new myPageInfoController().execute(req, resp);
			
		}else if(target.equals("/myPageInfo")) {
			System.out.println("2. " + target);
			result = new myPageInfoController().execute(req, resp);
			
		}else if(target.equals("/myPageInfo")) {
			System.out.println("2. " + target);
			result = new myPageInfoController().execute(req, resp);
			
		}else if(target.equals("/myPageInfo")) {
			System.out.println("2. " + target);
			result = new myPageInfoController().execute(req, resp);
			
		}else if(target.equals("/myPageInfo")) {
			System.out.println("2. " + target);
			result = new myPageInfoController().execute(req, resp);
			
		}else if(target.equals("/myPageInfo")) {
			System.out.println("2. " + target);
			result = new myPageInfoController().execute(req, resp);
			
		}else {
			System.out.println("3. " + target);
			System.err.println("cant find path");
		}

		
		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}else {
			System.err.println("result == null");
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
}
