<!-- menu.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="text-center">
  <a href="${pageContext.request.contextPath}/j1116h/Main?sw=main&product=${vo.product}&price=${vo.price}&su=${vo.su}">홈으로</a> |
  <a href="${pageContext.request.contextPath}/j1116h/Main?sw=input&product=${vo.product}&price=${vo.price}&su=${vo.su}">판매상품등록</a> |
  <a href="${pageContext.request.contextPath}/j1116h/Main?sw=list&product=${vo.product}&price=${vo.price}&su=${vo.su}">판매상품조회</a> |
  <a href="${pageContext.request.contextPath}/j1116h/Main?sw=photo&product=${vo.product}&price=${vo.price}&su=${vo.su}">포토갤러리</a>
</div>
