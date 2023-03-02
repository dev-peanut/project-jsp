package com.dhouse.corp;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.corp.dao.CorpDAO;
import com.dhouse.corp.domain.CorpDTO;

public class CorpListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		CorpDAO corpDAO = new CorpDAO();
		Result result = new Result();
		JSONArray corpJsons = new JSONArray();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		List<CorpDTO> corpList = null;
		
		String temp = req.getParameter("page");
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		
		Long total = corpDAO.getTotal();
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
		
		corpList = corpDAO.selectAll(pageMap);
		
		corpList.stream().map(corp -> new JSONObject(corp)).forEach(corpJsons::put);
		
//		corpList.stream().map(CorpDTO::getUserId).map(CorpDTO::getCorpFileSystemName).collect(Collectors.toList())
//		.stream().filter(files -> files.size() != 0).map(files -> files.get(0)).map(file -> new JSONObject(file))
//		.forEach(json -> {
//			try {
//				fileJsons.put(String.valueOf(json.get("corpId")), json);
//			} catch (JSONException e) {
//				e.printStackTrace();
//			}	
//		});
		
		req.setAttribute("corps", corpJsons.toString());
		req.setAttribute("total", total);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		result.setPath("/dhouse/businessIntroduction/business-introduction.jsp");
		
		
		return result;
	}

}
