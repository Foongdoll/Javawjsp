package study.storage;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet("/study/storage/T2_LoginOk")
@WebServlet("/study/storage/LoginOk")
public class T2_LoginOk extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// ServletContext application = request.getServletContext();
		
	  String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
	  String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
	  
	  PrintWriter out = response.getWriter();
	  
	  if((mid.equals("admin") && pwd.equals("1234")) || (mid.equals("hkd1234") && pwd.equals("1234"))) {
	  	Cookie cookie = new Cookie("cMid", mid);
	  	cookie.setPath("/");				// 웹 어플리케이션 전체 경로에서 사용하고자 할때로 설정했다.(웹어플리케이션의 모든 URL에서 전송가능하도록 설정)
	  	cookie.setMaxAge(5*60);			// 5분 저장설정
	  	response.addCookie(cookie);	// 쿠키저장
	  	
	  	HttpSession session = request.getSession();	// 세션객체 생성
	  	session.setAttribute("sMid", mid);					// 로그인 성공한 사용자의 아이디를 세션으로 저장시킨다.
	  	
	  	
	  	out.println("<script>");
	  	out.println("alert('"+mid+"님 로그인 되셨습니다.');");
	  	out.println("location.href='"+request.getContextPath()+"/study/1118_storage_server/t2_LoginMember.jsp';");
	  	out.println("</script>");
	  }
	  else {
	  	out.println("<script>");
	  	out.println("alert('아이디/비밀번호를 확인하세요.');");
	  	out.println("history.back();");
	  	out.println("</script>");
	  }
	}
}
