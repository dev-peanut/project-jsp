package com.dhouse.donationboard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.donationboard.dao.DonationBoardDAO;
import com.dhouse.promotionboard.domain.PromotionBoardDTO;

public class DonationBoardListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		Result result = new Result();
		DonationBoardDAO donationBoardDAO = new DonationBoardDAO();
		JSONArray donationBoardJsons = new JSONArray();
		List<PromotionBoardDTO> donationBoardList = null;
		
		donationBoardList = donationBoardDAO.selectAll();
//		System.out.println(donationBoardList);
		
		donationBoardList.stream().map(promotionBoard -> new JSONObject(promotionBoard)).forEach(promotionBoardJsons::put);

//		System.out.println(promotionBoardList.toString());
		
		req.setAttribute("donationBoards", donationBoardJsons.toString());
//		req.setAttribute("promotionBoards", promotionBoardDAO.selectAll());
		
		result.setPath("/dhouse/donation/donation-list.jsp");
		
		return result;
	}

}
