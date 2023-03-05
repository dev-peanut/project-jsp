package com.dhouse.corp;

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
import com.dhouse.corp.dao.CorpDAO;
import com.dhouse.corp.domain.CorpDTO;

public class CorpListController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		CorpDAO corpDAO = new CorpDAO();
		JSONArray corpJsons = new JSONArray();
		
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		List<CorpDTO> corpList = null;
		
		String temp = req.getParameter("page"); 
		
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 20;
		int startRow = (page - 1) * rowCount;

		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		
		corpList = corpDAO.selectAll(pageMap);
		
		corpList.stream().map(corp -> new JSONObject(corp)).forEach(corpJsons::put);
		
		req.setAttribute("corps", corpJsons.toString());
		
		result.setPath("/dhouse/businessIntroduction/business-introduction.jsp");
		
		return result;
	}

}






