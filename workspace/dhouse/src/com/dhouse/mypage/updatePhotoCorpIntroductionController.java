package com.dhouse.mypage;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.corp.domain.CorpVO;
import com.dhouse.mypage.dao.MyPageDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class updatePhotoCorpIntroductionController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		CorpVO corpVO = new CorpVO();
		MyPageDAO myPageDAO = new MyPageDAO();
		Result result = new Result();
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
	    int fileSize = 1024 * 1024 * 5; //5M

	    req.getSession().setAttribute("userId", 23L);
	    MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());

	    corpVO.setUserId(23L);
		corpVO.setCorpRegisterNumber(multipartRequest.getParameter("registerNumber"));
		corpVO.setCorpAddress(multipartRequest.getParameter("address"));
		corpVO.setCorpIntroductionText(multipartRequest.getParameter("introduction"));
		 
		/*
		 * Enumeration<String> fileNames = multipartRequest.getFileNames(); String
		 * fileName = fileNames.nextElement();//파일 한개씩 가져옴
		 */	      
		String fileSystemName = multipartRequest.getFilesystemName("fileSystemName");
	    corpVO.setFileSystemName(fileSystemName);
		
		System.out.println("들어옴");


		// dao 실행
		myPageDAO.updatePhotoCorpIntroduction(corpVO);

		result.setPath(req.getContextPath() + "/dhouse/user/myProfile.jsp");
		result.setRedirect(true);

		return result;
	}

}
