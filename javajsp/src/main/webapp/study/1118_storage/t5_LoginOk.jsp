<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t5_LoginOk.jsp -->
<%
	String mid = request.getParameter("mid")==null ? "" : request.getParameter("mid");
	String pwd = request.getParameter("pwd")==null ? "" : request.getParameter("pwd");
	
	if((mid.equals("admin") && pwd.equals("1234")) || (mid.equals("hkd1234") && pwd.equals("1234"))) {
		session.setAttribute("sMid", mid);
		
		int visitCnt = 0;
		
		if(application.getAttribute("aVisitCnt") == null) {
			application.setAttribute("aVisitCnt", 1);		
		}
		else {
			visitCnt = (int) application.getAttribute("aVisitCnt") + 1;
			application.setAttribute("aVisitCnt", visitCnt);
		}
		
		out.println("<script>");
		out.println("alert('"+mid+"님 로그인 되셨습니다.');");
		out.println("location.href='t5_LoginMember.jsp';");
		out.println("</script>");
	}
	else {
		out.println("<script>");
		out.println("alert('아이디와 비밀번호를 확인하세요!');");
		out.println("history.back();");
		out.println("</script>");
	}
%>