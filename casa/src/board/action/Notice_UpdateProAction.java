package board.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.bean.NoticeDAO;
import board.bean.NoticeDTO;

public class Notice_UpdateProAction implements action.SuperAction {

	public String executeAction(HttpServletRequest request, HttpServletResponse response) {

		try {
			
			
			@SuppressWarnings("deprecation")
			String path = request.getRealPath("board/notice/data/");

			int max = 1024 * 1024 * 5;
			String enc = "euc-kr";

			DefaultFileRenamePolicy dp = new DefaultFileRenamePolicy();
			MultipartRequest multi = new MultipartRequest(request, path, max, enc, dp);

			String[] paths = path.split("\\\\");
			boolean x = false;
			path = "/";

			for (int i = 0; i < paths.length; i++) {
				if (paths[i].equals("casa")) {
					x = true;
				}
				if (x) {
					path = path + paths[i] + "/";
				}
			}

			String filename = multi.getFilesystemName("save");
			path += filename;

			request.setCharacterEncoding("euc-kr");

			NoticeDTO article = new NoticeDTO();
			article.setNum(Integer.parseInt(multi.getParameter("num")));
			article.setSubject(multi.getParameter("subject"));
			article.setContent(multi.getParameter("content"));
			article.setFile_content(path);

			  NoticeDAO dbPro = NoticeDAO.getInstance();
			  int check = dbPro.updateArticle(article);
			  String pageNum = request.getParameter("pageNum");
			  
			  request.setAttribute("pageNum", new Integer(pageNum));
		      request.setAttribute("check", new Integer(check));
			  
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/board/notice/updatePro.jsp";

	}
}
