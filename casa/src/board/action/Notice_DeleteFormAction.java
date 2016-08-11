package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Notice_DeleteFormAction implements action.SuperAction {

	public String executeAction(HttpServletRequest request, HttpServletResponse response) {
		
		 int num = Integer.parseInt(request.getParameter("num"));
	        String pageNum = request.getParameter("pageNum");
	        
	        request.setAttribute("num", new Integer(num));
	        request.setAttribute("pageNum", new Integer(pageNum));

		return "/board/notice/deleteForm.jsp";

	}
}
