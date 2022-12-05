package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BoDeleteOkCommand implements BoardInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 정상적인 경로를 통해서 삭제하지 않았을경우를 대비해서 세션아이디와 현재 글의 아이디를 비교해서 같으면 삭제, 그렇지 않으면 홈으로 돌려보낸다.
		HttpSession session = request.getSession();
		String sMid = (String) session.getAttribute("sMid");
		int sLevel = (int) session.getAttribute("sLevel");
		String mid = request.getParameter("mid");
		
		if(sLevel != 0) {
			if(!sMid.equals(mid)) {
				request.setAttribute("msg", "userCheckNO");
				request.setAttribute("url", request.getContextPath()+"/");
				return;
			}
		}
		
		
		int idx = request.getParameter("idx")==null ? 0 : Integer.parseInt(request.getParameter("idx"));
		int pag = request.getParameter("pag")==null ? 0 : Integer.parseInt(request.getParameter("pag"));
		int pageSize = request.getParameter("pageSize")==null ? 0 : Integer.parseInt(request.getParameter("pageSize"));
		
		BoardDAO dao = new BoardDAO();
		
		int result = dao.getBoReplyCheck(idx);
		
		if(result == 1) {
			request.setAttribute("msg", "boDeleteReplyCheckOk");
			request.setAttribute("url", request.getContextPath()+"/boContent.bo?idx="+idx+"&pag="+pag+"&pageSize="+pageSize);
			return;
		}
		
		int res = dao.setBoDeleteOk(idx);
		
		if(res == 1) {
			request.setAttribute("msg", "boDeleteOk");
			request.setAttribute("url", request.getContextPath()+"/boList.bo?pag="+pag+"&pageSize="+pageSize);
		}
		else {
			request.setAttribute("msg", "boDeleteNo");
			request.setAttribute("url", request.getContextPath()+"/boContent.bo?idx="+idx+"&pag="+pag+"&pageSize="+pageSize);
		}
	}

}
