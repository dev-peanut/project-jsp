package com.dhouse.promotionboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.promotionboard.dao.PromotionBoardDAO;
import com.dhouse.promotionboard.domain.PromotionBoardDTO;

public class PromotionBoardDetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		PromotionBoardDAO promotionBoardDAO = new PromotionBoardDAO();
		PromotionBoardDTO promotionBoardDTO = new PromotionBoardDTO();
		Result result = new Result();
		
		Long promotionBoardId = Long.valueOf(req.getParameter("promotionBoardId"));
		System.out.println(promotionBoardId);
		promotionBoardDTO = promotionBoardDAO.select(promotionBoardId);
		System.out.println(promotionBoardDTO);
		
		
		req.setAttribute("promotionBoard", promotionBoardDTO);
		
		result.setPath("/dhouse/promotion/promotion-detail.jsp");
		
		return result;
	}

}
