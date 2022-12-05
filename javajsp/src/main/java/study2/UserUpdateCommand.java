package study2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.AdminDAO;
import study2.ajax.UserVO;

public class UserUpdateCommand implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		int age = request.getParameter("age")==null ? 0 : Integer.parseInt(request.getParameter("age"));
		String address = request.getParameter("address")==null ? "" : request.getParameter("address");
		
		UserVO vo = new UserVO();
		
		vo.setMid(mid);
		vo.setName(name);
		vo.setAge(age);
		vo.setAddress(address);
		
		AdminDAO dao = new AdminDAO();
		
		String res = dao.getMidSearch(mid);
		if(!res.equals("0")) {	// '0'은 기존 아이디가 존재함
			response.getWriter().write("찾고자하는 아이디가 없습니다. 다시 입력하세요");
		}
		else {
			dao.setUserUpdate(vo);
			response.getWriter().write(mid+"님의 자료가 수정되었습니다.");
		}
	}

}
