package com.dhouse.donationboard;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.donationboard.dao.DonationBoardDAO;
import com.dhouse.donationboard.domain.DonationBoardDTO;

public class DonationBoardListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		Result result = new Result();
		DonationBoardDAO donationBoardDAO = new DonationBoardDAO();
		JSONArray donationBoardJsons = new JSONArray();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		List<DonationBoardDTO> donationBoardList = null;
		
		
		String temp = req.getParameter("page"); 
		
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		
		Long total = donationBoardDAO.getTotal();
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;
		int startRow = (page - 1) * rowCount;
		
		System.out.println("3. startRow: " + startRow);
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		boolean prev = startPage > 1;
		boolean next = false;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		next = endPage != realEndPage;
		
		
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		
		donationBoardList = donationBoardDAO.selectAll(pageMap);
		
		donationBoardList.stream().map(donationBoard -> new JSONObject(donationBoard)).forEach(donationBoardJsons::put);
		
		req.setAttribute("donationBoards", donationBoardJsons.toString());
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
//		donationBoardList = donationBoardDAO.selectAll();
//		System.out.println(donationBoardList);
		

//		System.out.println(donationBoardList.toString());
		
		result.setPath("/dhouse/donation/donation-list.jsp");
		
		return result;
	}

}
