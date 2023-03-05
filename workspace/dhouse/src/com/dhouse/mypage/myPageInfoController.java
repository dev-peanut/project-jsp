package com.dhouse.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.mypage.dao.MyPageDAO;
import com.dhouse.mypage.domain.MyPageDTO;

public class myPageInfoController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MyPageDTO myPageDTO = new MyPageDTO();
		MyPageDAO myPageDAO = new MyPageDAO();
		Result result = new Result();
	
		//userId ¾²±â
		Long userId = Long.valueOf(req.getParameter("1L"));
		
		/*
		 * req.setAttribute("myInfo", mypageDAO.selectMyInfo(1L));
		 * req.setAttribute("countMyBoards", mypageDAO.countMyBoards(1L));
		 * req.setAttribute("likedIGot", mypageDAO.countLikedIGot(1L));
		 * req.setAttribute("countMyComments", mypageDAO.countMyComments(1L));
		 */
		
		
		
		return null;
	}

}
