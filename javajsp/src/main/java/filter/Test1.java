package filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/filter/Test1")
public class Test1 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		request.setCharacterEncoding("utf-8");
//		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String job = request.getParameter("job");
		
		PrintWriter out = response.getWriter();
		
		out.print("<p>성명 : " + name + "</p>");
		out.print("<p>성별 : " + gender + "</p>");
		out.print("<p>직업 : " + job + "</p>");
		out.print("<p><a href='"+request.getContextPath()+"/study/1117_filter/filter/test1.jsp'>돌아가기</a></p>");
	}
}
