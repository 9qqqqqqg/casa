package notice.action.WriteProAction;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.bean.NoticeDataBean;
import notice.bean.NoticeDBBean;

public class WriteProAction implements SuperAction {

   public String executeAction(HttpServletRequest request,
								HttpServletResponse response);
   try{

    request.setCharacterEncoding("euc-kr");
        
        NoticeDataBean article = new NoticeDataBean();
		article.setNum(Integer.parseInt(request.getParameter("num")));
        article.setSubject(request.getParameter("subject"));
		article.setContent(request.getParameter("content"));
        article.setReg_date(new Timestamp(System.currentTimeMillis()));
		article.setReadcount(Integer.parseInt(request.getParameter("readcount")));

        NoticeDBBean dbPro = NoticeDBBean.getInstance();
        dbPro.insertArticle(article);
   }catch(Exception e){
	   e.printStackTrace();
   }

   return "/casa/notice/writePro.jsp";

}
