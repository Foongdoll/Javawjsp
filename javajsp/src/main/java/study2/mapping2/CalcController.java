package study2.mapping2;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("*.calc")
public class CalcController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MappingInterface command = null;
		
		String viewPage = "/WEB-INF/study2/mapping2";
		
		String uri = request.getRequestURI();
		String com = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));
		
		if(com.equals("/Calc")) {
			viewPage += "/calc.jsp";
		}
		else if(com.equals("/CalcOk")) {
			command = new CalcOkCommand();
			command.excute(request, response);
			viewPage += "/calcOk.jsp";
		}
		else if(com.equals("/JuList")) {
			command = new JuListCommand();
			command.excute(request, response);
			viewPage += "/juList.jsp";
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
