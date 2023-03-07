package com.dhouse.promotionboard;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.promotionboard.dao.PromotionBoardDAO;
import com.dhouse.promotionboard.domain.PromotionBoardVO;
import com.dhouse.promotionfile.dao.PromotionFileDAO;
import com.dhouse.promotionfile.domain.PromotionFileVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class PromotionBoardUpdateOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		PromotionBoardVO promotionBoardVO = new PromotionBoardVO();
		PromotionBoardDAO promotionBoardDAO = new PromotionBoardDAO();
		PromotionFileDAO promotionFileDAO = new PromotionFileDAO();
		PromotionFileVO promotionFileVO = new PromotionFileVO();
		Result result = new Result();
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; //5M
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		Long promotionBoardId = Long.valueOf(multipartRequest.getParameter("promotionBoardId"));
//		테스트 용으로 세션에 담아둔 거 지워야 함
		req.getSession().setAttribute("userId", 1L);
		
		
		promotionBoardVO.setPromotionBoardId(promotionBoardId);
		promotionBoardVO.setPromotionBoardTitle(multipartRequest.getParameter("promotionBoardTitle"));
		promotionBoardVO.setPromotionBoardContents(multipartRequest.getParameter("promotionBoardContents"));
//		promotionBoardVO.setUserId((Long)req.getSession().getAttribute("userId"));
		
		promotionBoardDAO.update(promotionBoardVO);
		promotionFileDAO.delete(promotionBoardId);
		
		
		Enumeration<String> fileNames =  multipartRequest.getFileNames();	// getFileNames()는 내가 적어놓은 name값으로 가져오는 것
		
		while(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();
//			String fileOriginalName = multipartRequest.getOriginalFileName(fileName);
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
//			if(fileOriginalName == null) {continue;}
			
//			promotionFileVO.setFileOriginalName(fileOriginalName);
			promotionFileVO.setFileSystemName(fileSystemName);
			promotionFileVO.setPromotionBoardId(promotionBoardId);
			
			promotionFileDAO.insert(promotionFileVO);
		}
		
		result.setPath(req.getContextPath() + "/promotion/listOk.promotion");
		result.setRedirect(true);
		
		return result;
	}

}
