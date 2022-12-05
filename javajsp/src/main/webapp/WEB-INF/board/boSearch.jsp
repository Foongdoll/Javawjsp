<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>boSearch.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script>
    'use strict';
    function pageCheck() {
    	let pageSize = document.getElementById("pageSize").value;
    	location.href = "${ctp}/boList.bo?pageSize="+pageSize+"&pag=${pag}";
    }
    
    function searchCheck() {
    	let searchString = $("#searchString").val();
    	
    	if(searchString.trim() == "") {
    		alert("찾고자 하는 검색어를 입력하세요!");
    		searchForm.searchString.focus();
    	}
    	else {
    		searchForm.submit();
    	}
    }
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container">
  <h2 class="text-center">게 시 판 조 건 검 색 리 스 트</h2>
  <div class="text-center">
    (<font color="blue">${searchTitle}</font>(으)로 <font color="red">${searchString}</font>(을)를 검색한 결과 <font color="blue"><b>${searchCount}</b></font>건이 검색되었습니다.)
  </div>
  <br/>
  <table class="table table-hover text-center">
    <tr class="table-dark text-dark">
      <th>글번호</th>
      <th>글제목</th>
      <th>글쓴이</th>
      <th>글쓴날짜</th>
      <th>조회수</th>
      <th>좋아요</th>
    </tr>
  	<%-- <c:set var="curScrStartNo" value="${curScrStartNo}"/> --%>
    <c:forEach var="vo" items="${vos}">
    	<tr>
    	  <td>${searchCount}</td>
    	  <td class="text-left"><a href="${ctp}/boContent.bo?flag=search&search=${search}&searchString=${searchString}&idx=${vo.idx}&pageSize=${pageSize}&pag=${pag}">${vo.title}</a><c:if test="${vo.hour_diff <= 24}"><img src="${ctp}/images/new.gif"/></c:if></td>
    	  <td>${vo.nickName}</td>
    	  <td>${vo.wDate}</td>
    	  <td>${vo.readNum}</td>
    	  <td>${vo.good}</td>
    	</tr>
    	<c:set var="searchCount" value="${searchCount-1}"/>
    </c:forEach>
    <tr><td colspan="6" class="m-0 p-0"></td></tr>
  </table>
</div>
<br/>
<div class="text-center"><a href="${ctp}/boList.bo?pag=${pag}&pageSize=${pageSize}" class="btn btn-secondary">돌아가기</a></div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>