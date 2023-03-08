package com.dhouse.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.mypage.dao.MyPageDAO;
import com.dhouse.mypage.domain.MyPageDTO;
import com.dhouse.user.domain.UserVO;

public class myPageInfoCorpController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		UserVO userVO = new UserVO();
		MyPageDTO myPageDTO = new MyPageDTO();
		MyPageDAO myPageDAO = new MyPageDAO();
		Result result = new Result();
		System.out.println("들어옴");
		
		Long userId = (Long)req.getSession().getAttribute("userId");
		req.getSession().setAttribute("userId", 23L);
		
		myPageDTO = myPageDAO.select(userId);
		req.setAttribute("myPage", myPageDTO);
		
		result.setPath(req.getContextPath() + "/dhouse/user/myPageInfoCorp.jsp");
		result.setRedirect(true);
		return result;
		
	}

}
