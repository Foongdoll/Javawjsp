package admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdMemberDelCommand implements AdminInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = Integer.parseInt(request.getParameter("idx"));
		
		AdminDAO dao = new AdminDAO();
		
		dao.setMemberDel(idx);
		
		request.setAttribute("msg", "adMemberDelOk");
		request.setAttribute("url", request.getContextPath()+"/adMemList.ad");
	}

}
