package com.dhouse.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.mypage.dao.MyPageDAO;
import com.dhouse.user.domain.UserVO;

public class MyPasswordOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		UserVO userVO = new UserVO();
		MyPageDAO myPageDAO = new MyPageDAO();
		Result result = new Result();
		
		System.out.println("들어옴");
		// 로그인 했다 치고 넣어둬서 지워야함
		req.getSession().setAttribute("userId", 23L);
		//userVO.setUserId((Long)req.getSession().getAttribute("1L"));
		
		/* userVO.setUserId(23L); */
		//userVO.setUserPassword(req.getParameter("newPassword"));

		/*
		 * req.setAttribute("myInfo", mypageDAO.selectMyInfo(1L));
		 * req.setAttribute("countMyBoards", mypageDAO.countMyBoards(1L));
		 * req.setAttribute("likedIGot", mypageDAO.countLikedIGot(1L));
		 * req.setAttribute("countMyComments", mypageDAO.countMyComments(1L));
		 */
		
		myPageDAO.updatePassword(req.getParameter("newPassword"), 23L);
		/* req.setAttribute("updatePassword", myPageDAO.updatePassword(23L)); */
		
	    result.setPath(req.getContextPath() + "/dhouse/user/myProfile.jsp");
	    result.setRedirect(true);
	      
	    return result;
	      
	}
}
