package study2.mapping;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
//@WebServlet("/mapping/Test3")
@WebServlet("*.do")
public class Test3Controller extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StringBuffer url = request.getRequestURL();
		System.out.println("url : " + url);
		
		String uri = request.getRequestURI();
		System.out.println("uri : " + uri);
		
//		String com = uri.substring(uri.lastIndexOf("/"));
		String com = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));
		System.out.println("com : " + com);
		
//		PrintWriter out = response.getWriter();
		
		String viewPage = "/WEB-INF/study2/mapping";
		
		if(com.equals("/Test3_1")) {
			viewPage += "/test3_1.jsp";
		}
		else if(com.equals("/Test3_2")) {
			viewPage += "/test3_2.jsp";
		}
		else if(com.equals("/Test3_3")) {
			viewPage += "/test3_3.jsp";
		}
		else if(com.equals("/Test4") || com.equals("/test4")) {
			viewPage += "/test4.jsp";
		}
		else if(com.equals("/Test4Ok")) {
			int su1 = request.getParameter("su1")==null ? 0 : Integer.parseInt(request.getParameter("su1"));
			int su2 = request.getParameter("su2")==null ? 0 : Integer.parseInt(request.getParameter("su2"));
			String opt = request.getParameter("opt")==null ? "" : request.getParameter("opt");
			
			Test4Calc t4 = new Test4Calc();
			int res = t4.getCalc(su1, su2, opt);
			
			request.setAttribute("su1", su1);
			request.setAttribute("su2", su2);
			request.setAttribute("opt", opt);
			request.setAttribute("res", res);
					
			viewPage += "/test4Ok.jsp";
		}
		else {
//			out.println("<script>");
//			out.println("alert('잘못된 경로입니다.');");
//			out.println("location.href='/WEB-INF/study2/mapping/test3.jsp';");
//			out.println("location.href='"+request.getContextPath()+"/mapping/Test3';");
//			out.println("</script>");
//			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/study2/mapping/test3.jsp");
//			dispatcher.forward(request, response);
			viewPage += "/test3.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}
}
