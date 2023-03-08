package com.dhouse.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.mypage.dao.MyPageDAO;
import com.dhouse.user.domain.UserVO;

public class myPageMainController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MyPageDAO myPageDAO = new MyPageDAO();
		UserVO userVO = new UserVO();
		Result result = new Result();
		
		System.out.println("들어옴");
		Long userId = Long.valueOf(req.getParameter("userId"));
		//req.getSession().setAttribute("userId", 23L);
		
 		req.setAttribute("myPage", myPageDAO.select(userId));
		
		result.setPath(req.getContextPath() + "/dhouse/user/myPageMain.jsp");	
		result.setRedirect(true);
		
		return result;
	}
}
