package com.dhouse.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.admin.dao.AdminDAO;

public class AdminDonationBoardDetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long donationBoardId = Long.valueOf(req.getParameter("donationBoardId"));
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		
		req.setAttribute("board", adminDAO.selectDonationBoard(donationBoardId));
		req.setAttribute("page", req.getParameter("page"));
		req.setAttribute("type", req.getParameter("type"));
		req.setAttribute("keyword", req.getParameter("keyword"));
		
		result.setPath("/dhouse/components/equipment_modal.jsp");
		
		return result;
	}

}
