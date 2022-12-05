package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/mapping/Test1")
public class Test1Controller extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/mapping/Test1 서블릿입니다.");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/study2/mapping/test1.jsp");
		dispatcher.forward(request, response);
	}
}
