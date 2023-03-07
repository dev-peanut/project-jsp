package com.dhouse.notice;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.dhouse.Action;
import com.dhouse.Result;
import com.dhouse.domain.NoticeDTO;
import com.dhouse.notice.dao.NoticeDAO;

public class NoticeListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		NoticeDAO noticeDAO = new NoticeDAO();
		JSONArray noticeJsons = new JSONArray();
		
		Map<String, Object> pageMap = new HashMap<String, Object>();
		List<NoticeDTO> noticeList = null;
		
		String temp = req.getParameter("page"); 
		
		int page = temp == null || temp.equals("null") ? 1 : Integer.parseInt(temp);
		
		Long total = noticeDAO.getTotal();
//		한 페이지에 출력되는 게시글의 개수
		int rowCount = 10;
//		한 페이지에서 나오는 페이지 버튼의 개수
		int pageCount = 1;
		int startRow = (page - 1) * rowCount;
		
		int endPage = (int)(Math.ceil(page / (double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		boolean prev = startPage > 1;
		boolean next = false;
		endPage = endPage > realEndPage ? realEndPage : endPage;
		next = endPage != realEndPage;
		
		
		pageMap.put("rowCount", rowCount);
		pageMap.put("startRow", startRow);
		
		noticeList = noticeDAO.selectAll(pageMap);
		
		noticeList.stream().map(notice -> new JSONObject(notice)).forEach(noticeJsons::put);
		
		req.setAttribute("notices", noticeJsons.toString());
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("page", page);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		result.setPath("/dhouse/notice/notice.jsp");
		
		return result;
	}

}
