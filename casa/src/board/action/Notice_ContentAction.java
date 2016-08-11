package board.action;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.bean.NoticeDAO;
import board.bean.NoticeDTO;

public class Notice_ContentAction implements action.SuperAction {

	public String executeAction(HttpServletRequest request, HttpServletResponse response) {

		try{
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			
		 int num = Integer.parseInt(request.getParameter("num"));
		 String pageNum = request.getParameter("pageNum");
		 
			NoticeDAO dbpro = NoticeDAO.getInstance();
			NoticeDTO article = dbpro.getArticle(num);
			
			request.setAttribute("num", new Integer(num));
	        request.setAttribute("pageNum", new Integer(pageNum));
	        request.setAttribute("sdf", sdf);
	        request.setAttribute("article", article);
					
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/board/notice/content.jsp";

	}
}
