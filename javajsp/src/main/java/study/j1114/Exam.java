package study.j1114;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1114_Exam")
public class Exam extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		String part = request.getParameter("part")==null ? "" : request.getParameter("part");
		String[] products = request.getParameterValues("product");
		String[] prices = request.getParameterValues("price");
		String[] sus = request.getParameterValues("su");
		int[] res = new int[products.length];
		int price, su, totPrice = 0;
		
		/*
		// 계산결과를 콘솔에 출력하기
		for(int i=0; i<products.length; i++) {
			res[i] = Integer.parseInt(prices[i]) * Integer.parseInt(sus[i]);
			totPrice += res[i];
			
			System.out.print("products["+i+"] : " + products[i]);
			System.out.print(" \t prices["+i+"] : " + prices[i]);
			System.out.print(" \t sus["+i+"] : " + sus[i]);
			System.out.println(" \t res["+i+"] : " + res[i]);
		}
		System.out.println("총가격 : " + totPrice);
		*/
		
		// 계산결과를 웹에 출력하기
		PrintWriter out = response.getWriter();
		DecimalFormat decFormat = new DecimalFormat("###,###");
		
		out.println("<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\">");
		out.println("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js\"></script>");
		out.println("<style>");
		out.println("th, td{text-align:center}");
		out.println("</style>");
		out.println("<p><br/></p>");
		out.println("<h2 class='text-center'>제품 가격 계산하기</h2><br/>");
		out.println("<div class='container'>");
		out.println("<p>상품 등록자 : " + name + "</p>");
		out.println("<p>상품 분류 : " + part + "</p>");
		out.println("<table class='table table-bordered'><tr class='table-dark text-dark'>");
		out.println("<th>품명</th><th>가격</th><th>수량</th><th>금액</th>");
		for(int i=0; i<products.length; i++) {
			price = Integer.parseInt(prices[i]);
			su = Integer.parseInt(sus[i]);
			res[i] = price * su;
			totPrice += res[i];
			
			out.println("<tr>");
			out.print("<td>" + products[i] + "</td>");
			out.print("<td>" + decFormat.format(price) + "</td>");
			out.print("<td>" + decFormat.format(su) + "</td>");
			out.println("<td>" + decFormat.format(res[i]) + "</td>");
			out.println("</tr>");
		}
		out.println("<tr style='background-Color:orange'><td>총가격</td><td colspan='3'>" + decFormat.format(totPrice) + "</td></tr>");
		out.println("</table>");
		out.println("<hr/>");
		out.println("<a href='"+request.getContextPath()+"/study/1114/exam_동적폼.jsp' class='btn btn-primary form-control'>돌아가기</a>");
	}
}
