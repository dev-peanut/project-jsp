package com.dhouse.admin;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.admin.dao.AdminDAO;

public class AdminFoodDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminDAO adminDAO = new AdminDAO();
		Result result = new Result();
		Long foodId = Long.valueOf(req.getParameter("foodId"));
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		
		File file = new File(uploadPath + adminDAO.selectFood(foodId).getFileSystemName());
		if(file.exists()) {
			file.delete();
		}
		
		adminDAO.deleteFood(foodId);
		result.setPath(req.getContextPath() + "/admin/food/list.admin");
		result.setRedirect(true);
		
		return result;
	}

}
