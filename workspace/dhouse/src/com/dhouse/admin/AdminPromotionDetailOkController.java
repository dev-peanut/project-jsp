package com.dhouse.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.admin.dao.AdminDAO;

public class AdminPromotionDetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long promotionBoardId = Long.valueOf(req.getParameter("promotionBoardId"));
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		
		req.setAttribute("board", adminDAO.selectPromotionBoard(promotionBoardId));
		req.setAttribute("page", req.getParameter("page"));
		req.setAttribute("type", req.getParameter("type"));
		req.setAttribute("keyword", req.getParameter("keyword"));
		
		result.setPath("/dhouse/components/ad_modal.jsp");
		
		return result;
	}

}
