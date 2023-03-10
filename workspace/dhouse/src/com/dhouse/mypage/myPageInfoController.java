package com.dhouse.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.mypage.dao.MyPageDAO;
import com.dhouse.mypage.domain.MyPageDTO;
import com.dhouse.user.domain.UserVO;

public class myPageInfoController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		UserVO userVO = new UserVO();
		MyPageDTO myPageDTO = new MyPageDTO();
		MyPageDAO myPageDAO = new MyPageDAO();
		Result result = new Result();
		System.out.println("들어옴");
		//userId 쓰기
		//Long userId = Long.valueOf(req.getParameter("userId"));
		//userVO.setuserId(userId);
		
		Long userId = (Long)req.getSession().getAttribute("userId");
		req.getSession().setAttribute("userId", 23L);
//		req.getSession().setAttribute("userId", 3L);
//		userVO.setuserId(23L);
//		req.getSession().getAttribute("userId");

		myPageDTO = myPageDAO.selectUser(userId);
		req.setAttribute("myPage", myPageDTO);
		
		result.setPath(req.getContextPath() + "/dhouse/user/myPageInfo.jsp");
		result.setRedirect(true);
		return result;
		
	}

}
