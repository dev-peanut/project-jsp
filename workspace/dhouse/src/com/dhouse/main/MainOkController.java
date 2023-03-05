package com.dhouse.main;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.corp.dao.CorpDAO;
import com.dhouse.donationboard.dao.DonationBoardDAO;
import com.dhouse.promotionboard.dao.PromotionBoardDAO;

public class MainOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");

		
		return null;
	}
}
