package study2;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberVO;
import study2.ajax.UserDAO;
import study2.ajax.UserVO;

public class UserSearchCommand implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
		
		UserDAO dao = new UserDAO();
		
		UserVO vo = dao.getUserSearch(mid);
		
		// PrintWriter out = response.getWriter();
		
		int idx = 0;
		String name = "";
		int age = 0;
		String address = "";
		
		if(vo.getName() == null) {
			name = "찾는 자료가 없습니다.";
		}
		else {
			idx = vo.getIdx();
			mid = vo.getMid();
			name = vo.getName();
			age = vo.getAge();
			address = vo.getAddress();
		}
		
		String str = idx + "/" + mid + "/" + name + "/" + age + "/" + address;
		
		response.getWriter().write(str);
	}

}
