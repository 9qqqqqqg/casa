package notice.action.WriteFormAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WriteFormAction implements SuperAction {

   public String executeAction(HttpServletRequest request,
								HttpServletResponse response);

   return "/casa/notice/writeForm.jsp";

}
