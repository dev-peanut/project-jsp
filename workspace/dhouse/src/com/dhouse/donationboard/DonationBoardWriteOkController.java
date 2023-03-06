package com.dhouse.donationboard;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.donationboard.dao.DonationBoardDAO;
import com.dhouse.donationboard.domain.DonationBoardVO;
import com.dhouse.donationfile.dao.DonationFileDAO;
import com.dhouse.donationfile.domain.DonationFileVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class DonationBoardWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
	    DonationBoardVO donationBoardVO = new DonationBoardVO();
	    DonationFileVO donationFileVO = new DonationFileVO();
	    DonationBoardDAO donationBoardDAO = new DonationBoardDAO();
	    DonationFileDAO donationFileDAO = new DonationFileDAO();
	    Result result = new Result();
	    String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
	    int fileSize = 1024 * 1024 * 5; //5M
	    Long donationBoardCurrentSequence = 0L;
//	    테스트 용으로 세션에 담아둔 거 지워야 함
	    req.getSession().setAttribute("userId", 1L);
	     
	    MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
	    donationBoardVO.setDonationBoardTitle(multipartRequest.getParameter("donationBoardTitle"));
	    donationBoardVO.setDonationBoardContents(multipartRequest.getParameter("donationBoardContents"));
	    donationBoardVO.setUserId((Long)req.getSession().getAttribute("userId"));
		//추가
	    donationBoardDAO.insert(donationBoardVO);
		//조회
		donationBoardCurrentSequence = donationBoardDAO.getCurrentSequence();
		//getFileNames() : 파일 원본 이름 아님!!
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		
		while(fileNames.hasMoreElements()) {
			String fileName = fileNames.nextElement();//파일 한개씩 가져옴
			String fileSystemName = multipartRequest.getFilesystemName(fileName);
			
			donationFileVO.setFileSystemName(fileSystemName);
			donationFileVO.setDonationBoardId(donationBoardCurrentSequence);
			
			donationFileDAO.insert(donationFileVO);
		}
		
		result.setPath(req.getContextPath() + "/donation/write.donation");
		result.setRedirect(true);
	    
		return result;
	}

}
