package com.dhouse.corp;

import java.io.IOException;

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
		CorpDAO corpDAO = new CorpDAO();
		CorpDTO corpDTO = new CorpDTO();
		Result result = new Result();
		
		
		
		
		
		return result;
	}

}
