package com.dhouse.donationboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Result;

public class DonationBoardFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String uri = req.getRequestURI();
		String contextPath = req.getContextPath();
		String target = uri.replace(contextPath, "").split("\\.")[0];
		Result result = null;

		
		System.out.println(target);
		
		if(target.equals("/donation/listOk")) {
			result = new DonationBoardListOkController().execute(req, resp);
			
		}else if(target.equals("/donation/write")){
			result = new Result();
			result.setPath("/dhouse/donation/donation-write.jsp");	
			
		}else if(target.equals("/donation/writeOk")){
			System.out.println("들어옴");
			result = new DonationBoardWriteOkController().execute(req, resp);
			
		}else if(target.equals("/donation/deleteOk")){
			result = new DonationBoardDeleteOkController().execute(req, resp);
			
		}else if(target.equals("/donation/detailOk")){
			result = new DonationBoardDetailOkController().execute(req, resp);
			
		}else if(target.equals("/donation/modifyOk")){
			result = new DonationBoardModifyOkController().execute(req, resp);

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
