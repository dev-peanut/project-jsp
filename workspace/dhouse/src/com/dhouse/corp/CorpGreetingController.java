package com.dhouse.corp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;

public class CorpGreetingController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		
		result.setPath("/dhouse/businessIntroduction/business-introduction-greeting.jsp");
		
		return result;
	}

}
