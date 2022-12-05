package study.storage2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/study/storage2/T5_LogOut")
public class T5_LogOut extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");

		session.invalidate();
		
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('"+mid+"님 로그아웃 되셨습니다.');");
		out.println("location.href='"+request.getContextPath()+"/study/1118_storage2_server/t5_Login.jsp';");
		out.println("</script>");
	}
}
