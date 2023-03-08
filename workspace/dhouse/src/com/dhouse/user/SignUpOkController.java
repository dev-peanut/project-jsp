package com.dhouse.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.corp.dao.CorpDAO;
import com.dhouse.corp.domain.CorpVO;
import com.dhouse.user.dao.UserDAO;
import com.dhouse.user.domain.UserVO;

public class SignUpOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		UserDAO userDAO = new UserDAO();
		CorpDAO corpDAO = new CorpDAO();
		UserVO userVO = new UserVO();
		CorpVO corpVO = new CorpVO();
		Result result = new Result();
		
		String corp = req.getParameter("corp");
		System.out.println(corp);
		
		userVO.setUserIdentification(req.getParameter("userIdentification"));
		userVO.setUserPassword(req.getParameter("userPassword"));
		userVO.setUserName(req.getParameter("userName"));
		userVO.setUserNickname(req.getParameter("userNickname"));
		userVO.setUserPhone(req.getParameter("userPhone"));
		userVO.setUserEmail(req.getParameter("userEmail"));
		
		userDAO.join(userVO);
		
		if(corp != null) {
			System.out.println("기업 회원가입 들어옴");
			corpVO.setCorpAddress(req.getParameter("corpAddress"));
			corpVO.setCorpRegisterNumber(req.getParameter("corpRegisterNumber"));
			corpVO.setUserId(new CorpDAO().getSequence());
			corpVO.setCorpIntroductionText("");
			corpVO.setFileSystemName("");
			corpDAO.insertCorp(corpVO);
		}
		
		result.setPath(req.getContextPath() + "/user/login.user");
		result.setRedirect(true);
		
		return result;
	}

}
