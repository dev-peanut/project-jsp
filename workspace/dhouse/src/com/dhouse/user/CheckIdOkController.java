package com.dhouse.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.user.dao.UserDAO;

public class CheckIdOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PrintWriter out = resp.getWriter();
		UserDAO userDAO = new UserDAO();
		JSONObject json = new JSONObject();
		try {
			json.put("check", userDAO.checkId(req.getParameter("userIdentification")));
			out.print(json.toString());
		} catch (JSONException e) {
			e.printStackTrace();
		} finally {
			out.close();
		}
		
		return null;
	}

}
















