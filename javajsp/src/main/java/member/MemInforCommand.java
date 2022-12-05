package member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.AdminInterface;

public class MemInforCommand implements MemberInterface, AdminInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid");
		int pag = request.getParameter("pag")=="" ? 1 : Integer.parseInt(request.getParameter("pag"));
		
		MemberDAO dao = new MemberDAO();
		MemberVO vo = dao.getLoginCheck(mid);
		
		String strLevel = "";
		if(vo.getLevel() == 0) strLevel = "관리자";
		else if(vo.getLevel() == 1) strLevel = "준회원";
		else if(vo.getLevel() == 2) strLevel = "정회원";
		else if(vo.getLevel() == 3) strLevel = "우수회원";
		else if(vo.getLevel() == 4) strLevel = "운영자";
		
		request.setAttribute("pag", pag);
		request.setAttribute("strLevel", strLevel);
		request.setAttribute("vo", vo);
	}

}
