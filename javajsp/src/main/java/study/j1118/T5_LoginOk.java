package study.j1118;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/study/j1118/T5_LoginOk")
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
			
			// 아이디를 쿠키에 저장할지를 결정한다.
			String idSave = request.getParameter("idSave")==null ? "off" : "on";
			
			Cookie cookieMid = new Cookie("cMid", mid);  // 쿠키변수 'cMid'에 사용자 아이디인 'mid'를 넣어서 생성한다.
			cookieMid.setPath("/");		// 웹 어플리케이션 전체 경로에서 사용하고자 할때로 설정했다.
			if(idSave.equals("on")) {
				cookieMid.setMaxAge(60*60*24*7);	// cookieMid 쿠키 만료시간은 7일
			}
			else {
				cookieMid.setMaxAge(0);	// cookieMid 쿠키 삭제
			}
			response.addCookie(cookieMid);
			
			int visitCnt = 0;
			if(application.getAttribute("aVCnt") != null) {
				visitCnt = (int) application.getAttribute("aVCnt") + 1;
				application.setAttribute("aVCnt", visitCnt);
			} else {
				application.setAttribute("aVCnt", 1);
			}
			
			out.println("<script>");
			out.println("alert('"+mid+"님 로그인 되셨습니다.');");
			out.println("location.href='"+request.getContextPath()+"/study/1118LoginCheck/t5_LoginMember.jsp';");
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
