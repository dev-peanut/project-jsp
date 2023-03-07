package com.dhouse.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.admin.dao.AdminDAO;
import com.dhouse.file.dao.FileDAO;

public class AdminDonationBoardDeleteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		AdminDAO adminDAO = new AdminDAO();
//		FileDAO fileDAO = new FileDAO();
		Result result = new Result();
		Long donationBoardId = Long.valueOf(req.getParameter("donationBoardId"));
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		
//		fileDAO.select(donationBoardId).stream().map(file -> new File(uploadPath + file.getFileSystemName())).forEach(file -> {
//			if(file.exists()) {
//				file.delete();
//			}
//		});
		
//		fileDAO.delete(donationBoardId);
		adminDAO.deleteDonationBoard(donationBoardId);
		result.setPath(req.getContextPath() + "/admin/donationBoard/list.admin");
		result.setRedirect(true);
		
		return result;
	}

}
