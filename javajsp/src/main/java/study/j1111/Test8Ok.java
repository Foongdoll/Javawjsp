package study.j1111;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/atom/t7")
public class Test8Ok extends HttpServlet {
	@Override
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		
		System.out.println("성명 : " + name);
		System.out.println("나이 : " + age);
	}
}
