<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");

	String hakbun = request.getParameter("hakbun");
	String name = request.getParameter("name");
	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int mat = Integer.parseInt(request.getParameter("mat"));
	int soc = Integer.parseInt(request.getParameter("soc"));
	int sci = Integer.parseInt(request.getParameter("sci"));
	int tot = Integer.parseInt(request.getParameter("tot"));
	double avg = Double.parseDouble(request.getParameter("avg"));
	String grade = request.getParameter("grade");
%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test2Ok.jsp</title>
  <%@ include file="../../include/bs4.jsp" %>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>이곳은 test2Ok.jsp 입니다.</h2>
  <p>학번 : <%=hakbun%></p>
  <p>성명 : <%=name%></p>
  <p>국어 : <%=kor%></p>
  <p>영어 : <%=eng%></p>
  <p>수학 : <%=mat%></p>
  <p>사회 : <%=soc%></p>
  <p>과학 : <%=sci%></p>
  <p>총점 : <%=tot%></p>
  <p>평균 : <%=avg%></p>
  <p>학점 : <%=grade%></p>
  <p><hr/></p>
  <p><a href="test2.jsp" class="btn btn-secondary">돌아가기</a></p>
</div>
<p><br/></p>
</body>
</html>