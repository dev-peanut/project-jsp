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

public class AdminFoodDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminDAO adminDAO = new AdminDAO();
		FileDAO fileDAO = new FileDAO();
		Result result = new Result();
		Long foodId = Long.valueOf(req.getParameter("foodId"));
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		
		fileDAO.selectFood(foodId).stream().map(file -> new File(uploadPath + file.getFileSystemName())).forEach(file -> {
			if(file.exists()) {
				file.delete();
			}
		});
		
		fileDAO.deleteFood(foodId);
		adminDAO.deleteFood(foodId);
		result.setPath(req.getContextPath() + "/admin/food/list.admin");
		result.setRedirect(true);
		
		return result;
	}

}
