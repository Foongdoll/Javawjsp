package study.j1119;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/j1119/LifeCycle2")
public class LifeCycle2 extends HttpServlet {
	@Override
	public void init() throws ServletException {
		System.out.println("---- 이곳은 init() 메소드 입니다. ----");
	}
	
	/*
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("---- 이곳은 service() 메소드 입니다. ----");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println("1.title : " + title);
		System.out.println("1.content : " + content);
		
		// forword를 이용한 전송
		request.setAttribute("title", title);
		request.setAttribute("content", content);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/study/1119LifeCycle/test1Res.jsp");
		dispatcher.forward(request, response);
	}
	*/
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("---- 이곳은 doPost() 메소드 입니다. ----");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		System.out.println("2.title : " + title);
		System.out.println("2.content : " + content);
		
		// Get방식으로의 전송
		response.sendRedirect(request.getContextPath()+"/study/1119LifeCycle/test1Res2.jsp?title="+title+"&content="+content);
	}
	
	@Override
	public void destroy() {
		System.out.println("---- 이곳은 destroy() 메소드 입니다.... ----");
	}
	
	@PostConstruct
	public void initPostConstruct() {
		System.out.println("---- 이곳은 @PostConstruct 입니다.... ----");
	}
	
	@PreDestroy
	public void destroyPreDestroy() {
		System.out.println("---- 이곳은 @PreDestroy 입니다....... ----");
	}
}
