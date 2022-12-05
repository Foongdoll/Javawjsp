<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- t3_SessionGroup.jsp -->
<%
  Enumeration names = session.getAttributeNames();

	while(names.hasMoreElements()) {
		String name = (String) names.nextElement();
		String item = (String) session.getAttribute(name);
		out.println("세션명 : " + name + "<br/>");
		out.println("세션명2 : " + item + "<br/>");
	}
%>
<p>
  <a href="t3_SessionMain.jsp" class="btn btn-warning form-control">돌아가기</a>
</p>