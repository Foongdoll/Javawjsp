package study.storage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/study/storage/T2_LoginDelete")
public class T2_LoginDelete extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Cookie[] cookies = request.getCookies();
		String mid = "";
		
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("cMid")) {
				mid = cookies[i].getValue();
				cookies[i].setPath("/");
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
				break;
			}
		}
		
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('"+mid+"님의 아이디 쿠키 정보가 삭되었습니다.');");
		out.println("location.href='"+request.getContextPath()+"/study/1118_storage_server/t2_LoginMember.jsp';");
		out.println("</script>");
	}
}
