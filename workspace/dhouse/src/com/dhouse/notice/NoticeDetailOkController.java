package com.dhouse.notice;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.notice.dao.NoticeDAO;
import com.dhouse.notice.domain.NoticeDTO;
import com.dhouse.promotionboard.dao.PromotionBoardDAO;
import com.dhouse.promotionboard.domain.PromotionBoardDTO;

public class NoticeDetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		req.setCharacterEncoding("UTF-8");
		Result result = new Result();
		NoticeDTO noticeDTO = new NoticeDTO();
		NoticeDAO noticeDAO = new NoticeDAO();
		
		Long noticeId = Long.valueOf(req.getParameter("noticeId"));
		
		noticeDTO = noticeDAO.selectDetail(noticeId);
		
		req.setAttribute("notice", noticeDTO);
		
		
		
		return result;
	}

}
