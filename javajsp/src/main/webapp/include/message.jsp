<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>message.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script>
    'use strict';
    let msg = "${msg}";
    let url = "${url}";
    let val = "${val}";
    
    if(msg == "guInputOk") msg = "방명록에 글이 등록되었습니다.";
    else if(msg == "guInputNo") msg = "방명록에 글등록 실패~~";
    else if(msg == "adminLoginOk") msg = "관리자 인증 성공!!";
    else if(msg == "adminLoginNo") msg = "관리자 인증 실패";
    else if(msg == "adminLogoutOk") msg = "관리자님 로그아웃 되셨습니다.";
    else if(msg == "guDeleteOk") msg = "방명록의 글이 삭제 되었습니다.";
    else if(msg == "guDeleteNo") msg = "방명록의 글이 삭제 실패~~";
    else if(msg == "loginOk") msg = val + "님 로그인 성공!!";
    else if(msg == "loginNo") msg = "로그인 실패~~";
    else if(msg == "memLogoutOk") msg = val + "로그아웃 되었습니다.";
    else if(msg == "idCheckNo") msg = "중복된 아이디 입니다.";
    else if(msg == "nickCheckNo") msg = "중복된 닉네임 입니다.";
    else if(msg == "memJoinOk") msg = "회원에 가입 되셨습니다.";
    else if(msg == "memJoinNo") msg = "회원 가입 실패~~";
    else if(msg == "passwordNo") msg = "비밀번호를 확인하세요~~";
    else if(msg == "passwordOk") msg = "비밀번호를 변경하였습니다.";
    else if(msg == "passwordOkNo") msg = "비밀번호를 변경 실패~~";
    else if(msg == "passwordYes") msg = "회원정보 변경페이지로 이동합니다.";
    else if(msg == "memUpdateOk") msg = "회원정보가 변경되었습니다.";
    else if(msg == "memUpdateNo") msg = "회원정보가 변경실패~~";
    else if(msg == "levelCheckOk") msg = "회원 등급이 변경처리 되었습니다.";
    else if(msg == "memberDelOk") msg = "정상적으로 회원탈퇴 되셨습니다.";
    else if(msg == "adMemberDelOk") msg = "탈퇴신청회원의 정보를 삭제처리 했습니다.";
    else if(msg == "boInputOk") msg = "게시글이 입력되었습니다.";
    else if(msg == "boInputNo") msg = "게시글이 입력 취소~~";
    else if(msg == "boDeleteOk") msg = "게시글이 삭제 되었습니다.";
    else if(msg == "boDeleteNo") msg = "게시글 삭제 실패~~";
    else if(msg == "userCheckNO") msg = "정상적인 사용자가 아니시군요....혹시 해커???";
    else if(msg == "boUpdateOk") msg = "게시글이 수정되었습니다.";
    else if(msg == "boUpdateNo") msg = "게시글이 수정 실패~~";
    else if(msg == "upLoad1Ok") msg = "업로드 성공 !!";
    else if(msg == "upLoad1No") msg = "업로드 실패 !!";
    else if(msg == "boDeleteReplyCheckOk") msg = "게시글에 댓글이 있어서 게시글 삭제가 불가능합니다.";
    
    alert(msg);
    if(url != "") location.href = url;
  </script>
</head>
<body>

</body>
</html>