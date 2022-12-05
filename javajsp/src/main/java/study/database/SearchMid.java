package study.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/database/SearchMid")
public class SearchMid extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		JusorokDAO dao = new JusorokDAO();
		
		JusorokVO vo = dao.getMemberSearch(mid);
		
		PrintWriter out = response.getWriter();
		
		if(vo.getName() != null) {
			request.setAttribute("vo", vo);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/study/1120_Database/memberSearch.jsp");
			dispatcher.forward(request, response);
  	}
  	else {
  		out.println("<script>");
  		out.println("alert('찾고자 하는 아이디가 없습니다.!!');");
  		out.println("location.href='"+request.getContextPath()+"/study/1120_Database/member.jsp';");
  		out.println("</script>");
  	}
		
	}
}
