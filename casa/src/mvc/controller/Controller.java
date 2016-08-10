package mvc.controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.SuperAction;

public class Controller extends HttpServlet {
	Map map = new HashMap();

	public void init(ServletConfig config) throws ServletException {
		String path = config.getInitParameter("propertiesPath");
		InputStream in = null;
		Properties p = new Properties();
		try {
			in = new FileInputStream(path);
			p.load(in);
			Iterator iter = p.keySet().iterator();
			while (iter.hasNext()) {
				String key = (String) iter.next();
				String value = p.getProperty(key);
				Class className = Class.forName(value);
				Object obj = className.newInstance();
				map.put(key, obj);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uri = request.getRequestURI();
		String view = null;
		SuperAction action = (SuperAction) map.get(uri);
		view = action.executeAction(request, response);
		System.out.println(uri + " " + view);
		request.setAttribute("content", view);
		RequestDispatcher rd = request.getRequestDispatcher("/template.jsp");
		rd.forward(request, response);
	}

}
