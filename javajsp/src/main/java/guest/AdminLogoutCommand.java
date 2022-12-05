package guest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLogoutCommand implements GuestInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		session.removeAttribute("sAMid");
		
		request.setAttribute("msg", "adminLogoutOk");
		request.setAttribute("url", request.getContextPath()+"/guList.gu");
	}

}
