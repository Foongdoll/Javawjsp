package study.j1116h;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({"/j1116h/Main","/M","/m"})
public class Main extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String sw = request.getParameter("sw")==null ? "main" : request.getParameter("sw");
		
		String product = request.getParameter("product")==null ? "" : request.getParameter("product");
		int price = (request.getParameter("price").equals("") || request.getParameter("price")==null) ? 0 : Integer.parseInt(request.getParameter("price"));
		int su = request.getParameter("su").equals("") ? 0 : Integer.parseInt(request.getParameter("su"));
		int kumaek = price * su;
		
		ProductVO vo = new ProductVO(product, price, su, kumaek, sw);
		
		String viewPage = "/study/1116h2";
		if(sw.equals("input")) viewPage += "/input.jsp";
		else if(sw.equals("list")) viewPage += "/list.jsp";
		else if(sw.equals("photo")) viewPage += "/photo.jsp";
		else viewPage += "/main.jsp";
		
		request.setAttribute("vo", vo);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
}
