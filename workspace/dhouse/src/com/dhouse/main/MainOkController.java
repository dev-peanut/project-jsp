package com.dhouse.main;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.corp.dao.CorpDAO;
import com.dhouse.donationboard.dao.DonationBoardDAO;
import com.dhouse.promotionboard.dao.PromotionBoardDAO;
import com.dhouse.promotionboard.domain.PromotionBoardDTO;
import com.dhouse.promotionfile.dao.PromotionFileDAO;

public class MainOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		PromotionBoardDAO promotionBoardDAO = new PromotionBoardDAO();
		DonationBoardDAO donationBoardDAO = new DonationBoardDAO();
		CorpDAO corpDAO = new CorpDAO();
		PromotionBoardDTO promotionBoardDTO = new PromotionBoardDTO();
		Result result = new Result();
		JSONArray promotionBoardJsons = new JSONArray();
		List<PromotionBoardDTO> promotionBoardList = null;

//		여기부터 작업해야 함
//		promotionBoardList = promotionBoardDAO.

		req.setAttribute("promotionBoards", promotionBoardJsons.toString());
		
		result.setPath("dhouse/main/main.jsp");
		
		return result;
	}
}
