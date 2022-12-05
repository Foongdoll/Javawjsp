package study2.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;

@SuppressWarnings("serial")
@WebServlet("/idSearchTest")
public class IdSearchTest extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		MemberDAO dao = new MemberDAO();
		
		MemberVO vo = dao.getLoginCheck(mid);
		
		PrintWriter out = response.getWriter();
		
		if(vo == null) {
			out.println("<script>");
			out.println("alert('찾고자 하는 회원이 없습니다.');");
			out.println("location.href='"+request.getContextPath()+"/ajax1.st';");
			out.println("</script>");
		}
		else {
			out.println("<script>");
			out.println("alert('검색된 회원은 "+vo.getName()+" 입니다.');");
			out.println("location.href='"+request.getContextPath()+"/ajax1.st';");
			out.println("</script>");
		}
	}
}
