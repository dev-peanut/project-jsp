package com.dhouse.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.mypage.dao.MyPageDAO;
import com.dhouse.user.domain.UserVO;

public class MyPageWithdrawOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		UserVO userVO = new UserVO(); 
		MyPageDAO myPageDAO = new MyPageDAO();
		Result result = new Result();
		
		//Long userId = Long.valueOf(req.getParameter("userId"));
//      final Long USER = (Long)req.getSession().getAttribute("memberId");
	      
		final Long USER = 4L;
      	myPageDAO.delete(USER);
      	System.out.println("들어옴");
		
		//req.getSession().setAttribute("userId", 1L);
		//myPageDAO.delete(1L); //로그인 받고 userId로 수정
		result.setPath(req.getContextPath() + "/dhouse/user/myPage.jsp");
		result.setRedirect(true);
		
		return result;
	}

}
