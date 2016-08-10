package board.notice.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteFormAction implements action.SuperAction {

	public String executeAction(HttpServletRequest request, HttpServletResponse response) {

		return "/board/notice/writeForm.jsp";

	}
}
