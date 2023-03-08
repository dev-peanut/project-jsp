package com.dhouse.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.banner.dao.BannerDAO;
import com.dhouse.banner.domain.BannerVO;

public class AdminBannerUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		BannerDAO bannerDAO = new BannerDAO();
		BannerVO bannerVO = new BannerVO();
		
		bannerVO.setBannerId(Long.valueOf(req.getParameter("bannerId")));
		bannerVO.setBannerPaymentStatus(req.getParameter("bannerPaymentStatus"));
		bannerVO.setBannerLocation(req.getParameter("bannerPosition"));
		bannerVO.setBannerPeriod(req.getParameter("bannerPeriod"));
		
		bannerDAO.update(bannerVO);
		
		return null;
	}

}
