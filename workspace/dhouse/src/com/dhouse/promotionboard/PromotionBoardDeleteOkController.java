package com.dhouse.promotionboard;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.promotionboard.dao.PromotionBoardDAO;
import com.dhouse.promotionfile.dao.PromotionFileDAO;

public class PromotionBoardDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		PromotionBoardDAO promotionBoardDAO = new PromotionBoardDAO();
		PromotionFileDAO promotionFileDAO = new PromotionFileDAO();
		Result result = new Result();
		Long promotionBoardId = Long.valueOf(req.getParameter("promotionBoardId"));
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";

		File file = new File(uploadPath + promotionFileDAO.select(promotionBoardId));
		if(file.exists()) {
			file.delete();
		}
		
		promotionFileDAO.delete(promotionBoardId);
		promotionBoardDAO.delete(promotionBoardId);
		result.setPath(req.getContextPath() + "/promotion/listOk.promotion");
		result.setRedirect(true);
		
		return result;
	}

}
