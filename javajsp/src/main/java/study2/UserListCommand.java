package study2;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import study2.ajax.UserDAO;
import study2.ajax.UserVO;

public class UserListCommand implements StudyInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserDAO dao = new UserDAO();
		
		ArrayList<UserVO> vos = dao.getUserList();
		
		request.setAttribute("vos", vos);
	}

}
