package board.action;

import java.text.SimpleDateFormat;
import java.util.Collections;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.bean.NoticeDAO;

public class Notice_SearchAction implements action.SuperAction {

	public String executeAction(HttpServletRequest request, HttpServletResponse response) {

		try {
			
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			String pageNum = request.getParameter("pageNum");
			
			String pageReturn = "";
			
			String skey = "subject";
			String sval = request.getParameter("sval");
			String sqry = "";
			if (pageNum == null)
				pageNum = "1";
			
			if (sval != null){
				pageReturn = "&skey="+skey+"&sval="+sval;
				sqry = " where "+skey+" like '%"+sval+"%' ";
			}else{
				sval = "";
			}
			
			int pageSize = 10;// 한 페이지의 글의 개수
			int currentPage = Integer.parseInt(pageNum);
			int startRow = (currentPage - 1) * pageSize + 1;// 한 페이지의 시작글 번호
			int endRow = currentPage * pageSize;// 한 페이지의 마지막 글번호
			int count = 0;
			int number = 0;
			
			List articleList = null;
			NoticeDAO dbPro = NoticeDAO.getInstance();
			count = dbPro.getArticleCount(sqry);
			
			if (!sqry.equals("") && count < startRow){
				currentPage = count / pageSize + ((count%pageSize != 0)?1:0);
				startRow = (currentPage - 1) * pageSize + 1;
				endRow = currentPage * pageSize;
			}
			
			if (count > 0) {
				articleList = dbPro.getArticles(startRow, endRow, sqry);
			} else {
				articleList = Collections.EMPTY_LIST;
			}
			number = count-(currentPage-1) * pageSize;
			
			request.setAttribute("currentPage", new Integer(currentPage));
			request.setAttribute("startRow", new Integer(startRow));
			request.setAttribute("endRow", new Integer(endRow));
			request.setAttribute("count", new Integer(count));
			request.setAttribute("pageSize", new Integer(pageSize));
			request.setAttribute("number", new Integer(number));
			request.setAttribute("sdf", sdf);
			request.setAttribute("articleList", articleList);
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "/board/notice/list.jsp";

	}
}
