package study.storage2;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/study/storage2/T5_LoginCountInit")
public class T5_LoginCountInit extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = request.getServletContext();
		
		// 누구든 정상적으로 접속하면 방문수 증가시키는 변수값을 관리자가 초기화시킨다.
		application.setAttribute("aVCnt", 1);
		
		response.sendRedirect(request.getContextPath()+"/study/1118_storage2_server/t5_LoginMember.jsp");
	}
}
