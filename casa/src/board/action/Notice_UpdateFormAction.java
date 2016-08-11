package board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.bean.NoticeDAO;
import board.bean.NoticeDTO;

public class Notice_UpdateFormAction implements action.SuperAction {

	public String executeAction(HttpServletRequest request, HttpServletResponse response) {

		try {
			int num = Integer.parseInt(request.getParameter("num"));
			String pageNum = request.getParameter("pageNum");

			NoticeDAO dbPro = NoticeDAO.getInstance();
			NoticeDTO article = dbPro.updateGetArticle(num);

			String path = article.getFile_content();
			String[] paths = path.split("/");
			int x = 1;

			for (int i = 0; i < paths.length; i++) {
				if (paths[i].equals("null")) {
					x = 0;
				}
			}

			request.setAttribute("pageNum", new Integer(pageNum));
			request.setAttribute("article", article);
			request.setAttribute("x", new Integer(x));

		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/board/notice/updateForm.jsp";

	}
}
