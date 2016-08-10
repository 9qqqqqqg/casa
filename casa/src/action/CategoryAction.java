package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CategoryAction implements SuperAction {
	public String executeAction(HttpServletRequest request, HttpServletResponse response) {
		String ctgcode = request.getParameter("ctgcode");
		request.setAttribute("ctgcode", ctgcode);
		return "/category.jsp";
	}
}