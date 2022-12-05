package study.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/database/JoinOk")
public class JoinOk extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		
		JusorokVO vo = new JusorokVO();
		
		vo.setMid(mid);
		vo.setPwd(pwd);
		vo.setName(name);
		
		JusorokDAO dao = new JusorokDAO();
		
		// 아이디 중복체크........
		
		// 중복체크후 정상자료일경우 DB에 저장처리
		int res = dao.setJoinOk(vo);

		PrintWriter out = response.getWriter();
		
		if(res == 1) {
			out.println("<script>"
								+ "alert('"+mid+"님 회원가입을 환영합니다.');"
								+ "location.href='"+request.getContextPath()+"/study/1120_Database/login.jsp';"
								+ "</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('회원가입 실패~ 다시 회원에 가입해 주세요.');");
			out.println("location.href='"+request.getContextPath()+"/study/1120_Database/join.jsp';");
			out.println("</script>");
		}
		
	}
}
