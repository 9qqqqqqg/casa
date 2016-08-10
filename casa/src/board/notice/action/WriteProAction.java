package board.notice.action;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.notice.bean.NoticeDataBean;
import board.notice.bean.NoticeDBBean;

public class WriteProAction implements action.SuperAction {

	public String executeAction(HttpServletRequest request, HttpServletResponse response) {

		try

		{

			@SuppressWarnings("deprecation")
			String path = request.getRealPath("board/notice/data/");
			
			int max = 1024 * 1024 * 5;
			String enc = "euc-kr";

			DefaultFileRenamePolicy dp = new DefaultFileRenamePolicy();
			MultipartRequest multi = new MultipartRequest(request, path, max, enc, dp);
			
			String filename = multi.getFilesystemName(request.getParameter("save"));
			path+=filename;
		
			request.setCharacterEncoding("euc-kr");

			NoticeDataBean article = new NoticeDataBean();
			article.setNum(Integer.parseInt(request.getParameter("num")));
			article.setSubject(request.getParameter("subject"));
			article.setContent(request.getParameter("content"));
			article.setFile_content(path);
			article.setReg_date(new Timestamp(System.currentTimeMillis()));

			NoticeDBBean dbPro = NoticeDBBean.getInstance();
			dbPro.insertArticle(article);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return "/board/notice/writePro.jsp";

	}
}
