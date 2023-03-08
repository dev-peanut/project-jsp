package com.dhouse.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.admin.dao.AdminDAO;
import com.dhouse.file.dao.FileDAO;

public class AdminPromotionDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminDAO adminDAO = new AdminDAO();
		FileDAO fileDAO = new FileDAO();
		Result result = new Result();
		Long promotionBoardId = Long.valueOf(req.getParameter("promotionBoardId"));
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		
		fileDAO.selectPromotionBoard(promotionBoardId).stream().map(file -> new File(uploadPath + file.getFileSystemName())).forEach(file -> {
			if(file.exists()) {
				file.delete();
			}
		});
		
		fileDAO.deletePromotionBoard(promotionBoardId);
		adminDAO.deletePromotionBoard(promotionBoardId);
		result.setPath(req.getContextPath() + "/admin/promotionBoard/list.admin");
		result.setRedirect(true);
		
		return result;
	}

}
