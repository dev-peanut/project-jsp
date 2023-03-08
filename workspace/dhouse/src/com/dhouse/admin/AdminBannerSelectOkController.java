package com.dhouse.admin;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.banner.dao.BannerDAO;

public class AdminBannerSelectOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		BannerDAO bannerDAO = new BannerDAO();
		JSONObject json = null;
		PrintWriter out = resp.getWriter();
		
		Long bannerId = Long.valueOf(req.getParameter("bannerId"));
		
		System.out.println(bannerId);
		
		if(bannerId != null) {
			json = new JSONObject(bannerDAO.select(bannerId));
		}
		
		out.append(json.toString());
		out.close();
		
		return null;
	}

}
