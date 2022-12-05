package board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoUpdateOkCommand implements BoardInterface {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idx = request.getParameter("idx")==null ? 0 : Integer.parseInt(request.getParameter("idx"));
		int pag = request.getParameter("pag")==null ? 0 : Integer.parseInt(request.getParameter("pag"));
		int pageSize = request.getParameter("pageSize")==null ? 0 : Integer.parseInt(request.getParameter("pageSize"));
		
		String title = request.getParameter("title")==null ? "" : request.getParameter("title");
		String email = request.getParameter("email")==null ? "" : request.getParameter("email");
		String homePage = request.getParameter("homePage")==null ? "" : request.getParameter("homePage");
		String content = request.getParameter("content")==null ? "" : request.getParameter("content");
		String hostIp = request.getParameter("hostIp")==null ? "" : request.getParameter("hostIp");
		
		BoardVO vo = new BoardVO();
		vo.setIdx(idx);
		vo.setTitle(title);
		vo.setEmail(email);
		vo.setHomePage(homePage);
		vo.setContent(content);
		vo.setHostIp(hostIp);
		
		BoardDAO dao = new BoardDAO();
		
		int res = dao.setBoUpdateOk(vo);
		
		if(res == 1) {
			request.setAttribute("msg", "boUpdateOk");
		}
		else {
			request.setAttribute("msg", "boUpdateNo");
		}
		request.setAttribute("url", request.getContextPath()+"/boContent.bo?idx="+idx+"&pag="+pag+"&pageSize="+pageSize);
	}

}
