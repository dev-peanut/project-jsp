package com.dhouse.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.donationboard.dao.DonationBoardDAO;
import com.dhouse.promotionboard.dao.PromotionBoardDAO;
import com.dhouse.promotionboard.domain.PromotionBoardDTO;

public class MainOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		PromotionBoardDAO promotionBoardDAO = new PromotionBoardDAO();
		DonationBoardDAO donationBoardDAO = new DonationBoardDAO();
		Result result = new Result();

//		지워야 하는 부분(임시로 세션에 담아둠)
		HttpSession session = req.getSession();
		session.setAttribute("userId", 1L);
//		session.invalidate();

		req.setAttribute("promotionBoardRankings", promotionBoardDAO.selectAll());
		req.setAttribute("promotionBoardList", promotionBoardDAO.selectList());
		req.setAttribute("donationBoardRankings", donationBoardDAO.selectRanking());
		req.setAttribute("donationBoardList", donationBoardDAO.selectList());
		
		result.setPath("/dhouse/main/main.jsp");
		
		return result;
	}
}
