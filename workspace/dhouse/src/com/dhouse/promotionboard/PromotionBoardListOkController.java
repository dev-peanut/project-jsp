package com.dhouse.promotionboard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.promotionboard.dao.PromotionBoardDAO;
import com.dhouse.promotionboard.domain.PromotionBoardDTO;

public class PromotionBoardListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		PromotionBoardDAO promotionBoardDAO = new PromotionBoardDAO();
		Result result = new Result();
		JSONArray promotionBoardJsons = new JSONArray();
		List<PromotionBoardDTO> promotionBoardList = null;
		
		promotionBoardList = promotionBoardDAO.selectAll();
//		System.out.println(promotionBoardList);
		
		promotionBoardList.stream().map(promotionBoard -> new JSONObject(promotionBoard)).forEach(promotionBoardJsons::put);

//		System.out.println(promotionBoardList.toString());
		
		req.setAttribute("promotionBoards", promotionBoardJsons.toString());
//		req.setAttribute("promotionBoards", promotionBoardDAO.selectAll());
		
		result.setPath("/dhouse/promotion/promotion.jsp");
		
		return result;
	}
}
