package com.dhouse.corp;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.corp.dao.CorpDAO;
import com.dhouse.corp.domain.CorpMoreDTO;

public class CorpListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 20;
		String temp = req.getParameter("page");
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		int startRow = (page - 1) * rowCount;
		int nextStartRow = page * rowCount;
		Map<String, Object> pageMap = new HashMap<String, Object>();
		
		PrintWriter out = resp.getWriter();
		CorpDAO corpDAO = new CorpDAO();
		CorpMoreDTO corpMoreDTO = new CorpMoreDTO();
		JSONArray jsonArray = new JSONArray();
		JSONObject jsonObject = new JSONObject();
		
//		Long total = corpDAO.getTotal();
		
		pageMap.put("startRow", startRow);
		pageMap.put("nextStartRow", nextStartRow);
		pageMap.put("rowCount", rowCount);
		
		corpMoreDTO.setCorpDTOs(corpDAO.selectAll(pageMap));
		corpMoreDTO.setNextPage(corpDAO.isNextPage(pageMap));
		
		corpMoreDTO.getCorpDTOs().stream().map(corpDTO -> new JSONObject(corpDTO)).forEach(jsonArray::put);
		
		try {
			jsonObject.put("isNextPage", corpMoreDTO.isNextPage());
			jsonObject.put("corps", jsonArray);
//			jsonObject.put("total", total);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		out.print(jsonObject.toString());
		out.close();
		
		return null;
	}

}
