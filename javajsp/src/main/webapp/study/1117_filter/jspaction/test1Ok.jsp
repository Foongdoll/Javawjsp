<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test1Ok.jsp</title>
  <jsp:include page="../../../include/bs4.jsp"></jsp:include>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>전송된 자료 결과 보기</h2>
  <div>
    <table class="table table-bordered">
      <tr>
        <th>성명</th>
        <td>${vo.name}</td>   <%-- <%=vo.getName()%> --%> 
      </tr>
      <tr>
        <th>성별</th>
        <td>${vo.gender}</td> 
      </tr>
      <tr>
        <th>나이</th>
        <td>${vo.age}</td> 
      </tr>
      <tr>
        <th>직업</th>
        <td>${vo.job}</td> 
      </tr>
      <tr>
        <th>주소</th>
        <td>${vo.address}</td> 
      </tr>
    </table>
  </div>
  <hr/>
  <p><a href="${pageContext.request.contextPath}/study/1117/jspaction/test1.jsp" class="btn btn-success form-control">돌아가기</a></p>
</div>
<p><br/></p>
</body>
</html>