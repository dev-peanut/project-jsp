package com.dhouse.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.banner.dao.BannerDAO;

public class AdminBannerDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BannerDAO bannerDAO = new BannerDAO();
		
		bannerDAO.delete(Long.valueOf(req.getParameter("bannerId")));
		
		return null;
	}

}
