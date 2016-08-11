package board.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.bean.NoticeDTO;
import board.bean.NoticeDAO;

public class Notice_WriteProAction implements action.SuperAction {

	public String executeAction(HttpServletRequest request, HttpServletResponse response) {

		try

		{

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
			article.setSubject(multi.getParameter("subject"));
			article.setContent(multi.getParameter("content"));
			article.setFile_content(path);
			article.setReg_date(new Timestamp(System.currentTimeMillis()));

			NoticeDAO dbPro = NoticeDAO.getInstance();
			dbPro.insertArticle(article);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/board/notice/writePro.jsp";

	}
}
