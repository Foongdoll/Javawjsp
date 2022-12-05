package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/mapping/Test3")
public class Test3 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/mapping/Test3 서블릿입니다.");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/study2/mapping/test3.jsp");
		dispatcher.forward(request, response);
	}
}
