package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.bean.NoticeDAO;

public class Notice_DeleteProAction implements action.SuperAction {

	public String executeAction(HttpServletRequest request, HttpServletResponse response) {
		
		try{
			request.setCharacterEncoding("euc-kr");

			int num = Integer.parseInt(request.getParameter("num"));
			String pageNum = request.getParameter("pageNum");
			
			NoticeDAO dbPro = NoticeDAO.getInstance();
			int check = dbPro.deleteArticle(num);
			
			request.setAttribute("pageNum", new Integer(pageNum));
	        request.setAttribute("check", new Integer(check));			
			
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/board/notice/deletePro.jsp";

	}
}
