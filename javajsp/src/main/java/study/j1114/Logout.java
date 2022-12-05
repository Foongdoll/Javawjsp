package study.j1114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1114_Logout")
public class Logout extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name");
		
		PrintWriter out = response.getWriter();
		
		out.println("<script>");
		out.println("alert('"+name+"님 로그아웃되셨습니다.');");
//		out.println("alert('"+ name + "' 님 로그아웃 되었습니다.);");
		out.println("location.href='"+request.getContextPath()+"/study/1114/test2.jsp';");
		out.println("</script>");
	}
}
