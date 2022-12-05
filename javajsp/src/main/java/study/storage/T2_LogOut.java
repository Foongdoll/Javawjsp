package study.storage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/study/storage/T2_LogOut")
public class T2_LogOut extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String mid = (String) session.getAttribute("sMid");

		session.invalidate();
		
		PrintWriter out = response.getWriter();
		out.print("<script>");
		out.print("alert('"+mid+"님 로그아웃 되셨습니다.');");
		out.print("location.href='"+request.getContextPath()+"/study/1118_storage_server/t2_Login.jsp';");
		out.print("</script>");
	}
}
