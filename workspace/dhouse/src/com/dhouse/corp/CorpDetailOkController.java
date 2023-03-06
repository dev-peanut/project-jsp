package com.dhouse.corp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.corp.dao.CorpDAO;

public class CorpDetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long userId = Long.valueOf(req.getParameter("userId"));
		Result result = new Result();
		CorpDAO corpDAO = new CorpDAO();

//		JSONArray corpJsons = new JSONArray();
//		JSONArray rankJsons = new JSONArray();
		
				
		
//		corpDAO.selectRanking().stream().filter(corpDTO -> corpDTO.getUserId() == userId).forEach(corpDTO -> rankJsons.put(corpDTO));
//		corpDAO.selectDetail(userId).stream().forEach(corpJsons::put);
		
		corpDAO.selectRanking().stream().filter(corpDTO -> corpDTO.getUserId() == userId);

		req.setAttribute("corpDetail", corpDAO.selectDetail(userId));
		req.setAttribute("corpRanking", corpDAO.selectRanking().stream().filter(corpDTO -> corpDTO.getUserId() == userId));
		
		result.setPath("/dhouse/businessIntroduction/business-introduction-detail.jsp");
		
		return result;
	}

}
















