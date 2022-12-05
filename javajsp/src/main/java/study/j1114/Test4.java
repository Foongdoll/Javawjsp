package study.j1114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/j1114_Test4", "/j1114_T4"})
public class Test4 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name");
		
		PrintWriter out = response.getWriter();
		
		out.print("서블릿에서 View로 출력하기<br/>");
		out.print("hidden으로 전송된 name : " + name);
		out.println("<p><a href='"+request.getContextPath()+"/study/1114/test4.jsp'>돌아가기</a></p>");
		out.println("<p><input type='button' value='돌아가기' onclick='location.href=\""+request.getContextPath()+"/study/1114/test4.jsp\"'/></p>");
	}
}
