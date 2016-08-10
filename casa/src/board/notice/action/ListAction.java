package board.notice.action;

import java.util.Collections;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.notice.bean.NoticeDBBean;

public class ListAction implements action.SuperAction {

	public String executeAction(HttpServletRequest request, HttpServletResponse response) {
		
		

		return "/board/notice/list.jsp";

	}
}
