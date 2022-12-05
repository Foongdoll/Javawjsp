package study2.mapping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/mapping/Test2")
public class Test2Controller extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/mapping/Test1 서블릿입니다.");
		
		Test2Ok t2 = new Test2Ok();
		t2.message();
		
		Test2OkOk t2Ok = new Test2OkOk();
		t2Ok.message();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/study2/mapping/test1.jsp");
		dispatcher.forward(request, response);
	}
}
