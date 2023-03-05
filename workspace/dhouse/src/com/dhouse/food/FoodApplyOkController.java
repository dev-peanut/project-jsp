package com.dhouse.food;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.food.dao.FoodDAO;
import com.dhouse.food.domain.FoodVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FoodApplyOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		FoodVO foodVO = new FoodVO();
		FoodDAO foodDAO = new FoodDAO();
		Result result = new Result();
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; //5M
		Long foodCurrentSequence = 0L;
//		multipartRequest : 파일 들어갈때 필요
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		foodVO.setFoodName(multipartRequest.getParameter("foodName"));
		foodVO.setFoodAmount(multipartRequest.getParameter("amountContent"));
		foodVO.setUserId((Long)req.getSession().getAttribute("userId"));
		
		foodDAO.insert(foodVO);
		
		foodCurrentSequence = foaodDAO.getCurrentSequence();
		
		
		return null;
	}

}
