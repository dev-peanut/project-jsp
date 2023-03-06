package com.dhouse.mypage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.mypage.dao.MyPageDAO;
/*
public class myPageCheckNickname implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PrintWriter out = resp.getWriter();
		MyPageDAO myPageDAO = new MyPageDAO();
		JSONObject json = new JSONObject();
		try {
			json.put("check", MyPageDAO.checkNickname(req.getParameter("userNickname")));
			out.print(json.toString());
		} catch (JSONException e) {
			e.printStackTrace();
		} finally {
			out.close();
		}
		
		return null;
	}

}*/


