package com.dhouse.corp;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.corp.dao.CorpDAO;
import com.dhouse.corp.domain.CorpDTO;

public class CorpDetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Long userId = Long.valueOf(req.getParameter("userId"));
		Result result = new Result();
		CorpDAO corpDAO = new CorpDAO();
		List<CorpDTO> corpList = null;		
		
//		JSONArray corpJsons = new JSONArray();
//		JSONArray rankJsons = new JSONArray();
		
		
//		corpDAO.selectRanking().stream().filter(corpDTO -> corpDTO.getUserId() == userId).forEach(corpDTO -> rankJsons.put(corpDTO));
//		corpDAO.selectDetail(userId).stream().forEach(corpJsons::put);
		
//		corpDAO.selectRanking().stream().filter(corpDTO -> corpDTO.getUserId() == userId).forEach(System.out::println);
//		System.out.println(corpDAO.selectDetail(userId));
		
		corpList = corpDAO.selectDetail(userId);
		
		req.setAttribute("corpDetail", corpList);
		req.setAttribute("corpRanking", corpDAO.selectRanking(userId));
		
		result.setPath("/dhouse/businessIntroduction/business-introduction-detail.jsp");
		
		return result;
	}

}
















