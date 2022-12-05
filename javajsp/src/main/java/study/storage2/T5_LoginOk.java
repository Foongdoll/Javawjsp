package study.storage2;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/study/storage2/T5_LoginOk")
public class T5_LoginOk extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
	  String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
	  
	  HttpSession session = request.getSession();
	  
	  ServletContext application = request.getServletContext();
	  
	  PrintWriter out = response.getWriter();
	  
	  if((mid.equals("admin") && pwd.equals("1234")) || mid.equals("hkd1234") || mid.equals("kms1234") || mid.equals("lkj1234")) {
			session.setAttribute("sMid", mid);		// 로그인 성공한 사용자의 아이디를 세션으로 저장시킨다.
			
			int visitCnt = 0;
			if(application.getAttribute("aVCnt") != null) {
				visitCnt = (int) application.getAttribute("aVCnt") + 1;
				application.setAttribute("aVCnt", visitCnt);
			} else {
				application.setAttribute("aVCnt", 1);
			}
			
			out.println("<script>");
			out.println("alert('"+mid+"님 로그인 되셨습니다.');");
			out.println("location.href='"+request.getContextPath()+"/study/1118_storage2_server/t5_LoginMember.jsp';");
			out.println("</script>");
	  }
	  else {
	  	out.println("<script>");
	  	out.println("alert('아이디/비밀번호를 확인하세요.');");
	  	out.println("history.back();");
	  	out.println("</script>");
	  	return;
	  }
	}
}
