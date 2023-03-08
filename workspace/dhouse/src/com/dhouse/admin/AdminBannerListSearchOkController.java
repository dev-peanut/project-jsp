package com.dhouse.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.banner.dao.BannerDAO;

public class AdminBannerListSearchOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		BannerDAO bannerDAO = new BannerDAO();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		JSONArray jsons = new JSONArray();
		PrintWriter out = resp.getWriter();
		
		String keyword = req.getParameter("keyword");
		String temp = req.getParameter("page"); 
		
		keyword = keyword == "" ? null : keyword;
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		
		Long total = bannerDAO.getTotal();
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 7;
		int startRow = (page - 1) * rowCount;
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		boolean prev = startPage > 1;
		boolean next = false;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		next = endPage != realEndPage;
		
		searchMap.put("rowCount", rowCount);
		searchMap.put("startRow", startRow);
		searchMap.put("keyword", keyword);
		
		bannerDAO.selectAll(searchMap).stream().map(e -> new JSONObject(e)).forEach(jsons::put);
		
		out.append(jsons.toString());
		out.close();
		
		return null;
	}

}
