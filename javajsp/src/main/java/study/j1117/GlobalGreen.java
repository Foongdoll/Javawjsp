package study.j1117;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GlobalGreen")
public class GlobalGreen extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// web.xml에 설정해둔 공통변수의 값들을 읽어온다.
		String logoName = getServletContext().getInitParameter("logoName");
		String homeAddress = getServletContext().getInitParameter("homeAddress");
		
		System.out.println("logoName : " + logoName);
		System.out.println("homeAddress : " + homeAddress);
		
		request.setAttribute("logoName", logoName);
		request.setAttribute("homeAddress", homeAddress);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/study/1117_filter/init/green.jsp");
		dispatcher.forward(request, response);
	}
}
