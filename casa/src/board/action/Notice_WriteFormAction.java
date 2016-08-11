package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Notice_WriteFormAction implements action.SuperAction {

	public String executeAction(HttpServletRequest request, HttpServletResponse response) {

		return "/board/notice/writeForm.jsp";

	}
}
