
package com.dhouse.admin;

import java.io.IOException;
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

public class AdminBannerListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		BannerDAO bannerDAO = new BannerDAO();
		Map<String, Object> searchMap = new HashMap<String, Object>();
		JSONArray jsons = new JSONArray();
		
		String temp = req.getParameter("page"); 
		
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
		
		bannerDAO.selectAll(searchMap).stream().map(e -> new JSONObject(e)).forEach(jsons::put);
		
		req.setAttribute("banners", jsons.toString());
		req.setAttribute("total", total);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		result.setPath("/dhouse/admin/banner.jsp");
		
		return result;
	}

}
