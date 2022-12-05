package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdMemberLevelAjaxCommand implements AdminInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = Integer.parseInt(request.getParameter("idx"));
		int level = Integer.parseInt(request.getParameter("level"));
		
		AdminDAO dao = new AdminDAO();
		
		dao.setLevelCheck(idx, level);
	}

}
