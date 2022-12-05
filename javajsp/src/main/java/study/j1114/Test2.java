package study.j1114;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1114_Test2")
public class Test2 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("1.이곳은 /j1114_Test2 입니다.");
//		System.out.println("2.이곳은 /j1114_Test2 입니다.");
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		/*
		//String mid = "";
		if(request.getParameter("mid") != null) {
			String mid = request.getParameter("mid");
		}
		else {
			String mid = "";
		}
		*/
		
		System.out.println("전송방식 : " + request.getMethod());
		
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		String hostIp = request.getParameter("hostIp");
		
		System.out.println("접속 IP : " + hostIp);
		
		mid = mid.trim();
		
		PrintWriter out = response.getWriter();
		
		if(mid.equals("admin") && pwd.equals("1234")) {
			out.println("<script>");
			out.println("alert('관리자 인증 성공!!!');");
			out.println("location.href='"+request.getContextPath()+"/study/1114/test2Res.jsp?mid="+mid+"&name="+name+"&hostIp="+hostIp+"';");
			out.println("</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('관리자 인증 실패~~~');");
			out.println("history.back();");
			out.println("</script>");
		}
	}
}
