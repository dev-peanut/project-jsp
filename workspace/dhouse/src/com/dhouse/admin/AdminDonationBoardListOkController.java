package com.dhouse.admin;

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
import com.dhouse.admin.dao.AdminDAO;
import com.dhouse.donationboard.domain.DonationBoardDTO;

public class AdminDonationBoardListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		AdminDAO adminDAO = new AdminDAO();
		JSONArray boardJsons = new JSONArray();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		List<DonationBoardDTO> boardList = null;
		
		String type = req.getParameter("type");
		String keyword = req.getParameter("keyword");
		String temp = req.getParameter("page");
		String[] types = null;
		
		types = type == null || type.equals("null") ? null : type.split("&");
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		
		Long total = adminDAO.getTotalDonationBoard(searchMap);
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 5;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 5;
		int startRow = (page - 1) * rowCount;
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		boolean prev = startPage > 1;
		boolean next = false;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		next = endPage != realEndPage;
		
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		pageMap.put("keyword", keyword);
		pageMap.put("types", types);
		
		boardList = adminDAO.selectAllDonationBoard(pageMap);
		
		boardList.stream().map(board -> new JSONObject(board)).forEach(boardJsons::put);
		
		req.setAttribute("boards", boardJsons.toString());
		req.setAttribute("total", total);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("keyword", keyword);
		req.setAttribute("type", type);
		
		
		
		result.setPath("/dhouse/admin/equipment_board.jsp");
		
		return null;
	}

}
