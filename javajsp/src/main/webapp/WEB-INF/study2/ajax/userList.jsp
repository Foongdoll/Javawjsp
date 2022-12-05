<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>userList.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
  <script>
    function userSearch(mid) {
    	$.ajax({
    		type  : "post",
    		url   : "${ctp}/userSearch.st",
    		data  : {mid : mid},
    		success:function(res) {
    			let str = res.split("/");
    			$("#mid").val(str[1]);
    			$("#name").val(str[2]);
    			$("#age").val(str[3]);
    			$("#address").val(str[4]);
    		},
    		error : function() {
    			alert("전송실패~~");
    		}
    	});
    }
    
    function userDel(mid) {
    	let ans = confirm("선택된 회원을 삭제처리 하시겠습니까?");
    	if(!ans) return false;
    	
    	$.ajax({
    		type  : "post",
    		url   : "${ctp}/userDel.st",
    		data  : {mid : mid},
    		success:function(res) {
    			if(res == "1") {
    				alert("삭제완료!!");
    				location.reload();
    			}
    			else {
    				alert("삭제실패~~");
    			}
    		},
    		error : function() {
    			alert("전송실패~~");
    		}
    	});
    }
    
    function userInput() {
    	let mid = document.getElementById("mid");
    	let name = document.getElementById("name");
    	let age = document.getElementById("age");
    	let address = document.getElementById("address");
    	if(mid.value.trim() == "") {
    		alert("아이디를 입력하세요");
    		mid.focus();
    		return false;
    	}
    	else if(name.value.trim() == "") {
    		alert("성명을 입력하세요");
    		name.focus();
    		return false;
    	}
    	else if(age.value.trim() == "") {
    		alert("나이를 입력하세요");
    		age.focus();
    		return false;
    	}
    	else if(address.value.trim() == "") {
    		alert("주소를 입력하세요");
    		address.focus();
    		return false;
    	}
    	
    	let query = {
    			mid  : mid.value,
    			name : name.value,
    			age  : age.value,
    			address : address.value
    	}
    	
    	$.ajax({
    		type  : "post",
    		url   : "${ctp}/userInput.st",
    		data  : query,
    		success:function(res) {
    			if(res == "1") {
    				alert("등록되었습니다.");
    				location.reload();
    			}
    			else {
    				alert(res);
    				mid.focus();
    			}
    		},
    		error : function() {
    			alert("전송 오류~~");
    		}
    	});
    }
    
    function userUpdate() {
    	let mid = document.getElementById("mid").value;
    	let name = document.getElementById("name").value;
    	let age = document.getElementById("age").value;
    	let address = document.getElementById("address").value;
    	if(mid.trim() == "") {
    		alert("아이디를 입력하세요");
    		document.getElementById("mid").focus();
    		return false;
    	}
    	else if(name.trim() == "") {
    		alert("성명을 입력하세요");
    		document.getElementById("name").focus();
    		return false;
    	}
    	else if(age.trim() == "") {
    		alert("나이를 입력하세요");
    		document.getElementById("age").focus();
    		return false;
    	}
    	else if(address.trim() == "") {
    		alert("주소를 입력하세요");
    		document.getElementById("address").focus();
    		return false;
    	}
    	
    	let query = {
    			mid  : mid,
    			name : name,
    			age  : age,
    			address : address
    	}
    	
    	$.ajax({
    		type  : "post",
    		url   : "${ctp}/userUpdate.st",
    		data  : query,
    		success:function(res) {
  				alert(res);
    			location.reload();
    		},
    		error : function() {
    			alert("전송 오류~~");
    		}
    	});
    }
  </script>
</head>
<body>
<jsp:include page="/include/header.jsp" />
<p><br/></p>
<div class="container">
  <h2>AJax 연습</h2>
  <hr/>
  <form>
    <table class="table table-bordered">
      <tr>
        <td colspan="2" class="text-center"><h3>User '가입/수정' 하기 폼</h3></td>
      </tr>
      <tr>
        <th>아이디</th>
        <td><input type="text" name="mid" id="mid" autofocus class="form-control"/></td>
      </tr>
      <tr>
        <th>성명</th>
        <td><input type="text" name="name" id="name" class="form-control"/></td>
      </tr>
      <tr>
        <th>나이</th>
        <td><input type="text" name="age" id="age" class="form-control"/></td>
      </tr>
      <tr>
        <th>주소</th>
        <td><input type="text" name="address" id="address" class="form-control"/></td>
      </tr>
      <tr>
        <td colspan="2" class="text-center">
          <input type="button" value="유저등록" onclick="userInput()" class="btn btn-success"/>&nbsp;
          <input type="reset" value="다시입력" class="btn btn-warning"/>&nbsp;
          <input type="button" value="User수정" onclick="userUpdate()" class="btn btn-info"/>&nbsp;
          <input type="button" value="전체보기" onclick="location.href='${ctp}/userList.st';" class="btn btn-primary"/>
        </td>
      </tr>
    </table>
  </form>
  <hr/>
  <h3>전체 리스트</h3>
  <br/>
  <table class="table table-hover text-center">
  	<tr class="table-dark text-dark">
  	  <th>번호</th><th>아이디</th><th>성명</th><th>나이</th><th>주소</th><th>비고</th>
  	</tr>
  	<c:forEach var="vo" items="${vos}">
	  	<tr>
	  	  <td>${vo.idx}</td>
	  	  <td>${vo.mid}</td>
	  	  <td>${vo.name}</td>
	  	  <td>${vo.age}</td>
	  	  <td>${vo.address}</td>
	  	  <td>
	  	    <a href="javascript:userSearch('${vo.mid}')" class="btn btn-success btn-sm">개별조회</a>
	  	    <a href="javascript:userDel('${vo.mid}')" class="btn btn-danger btn-sm">삭제</a>
	  	  </td>
	  	</tr>
  	</c:forEach>
  	<tr><td colspan="6" class="m-0 p-0"></td></tr>
  </table>
</div>
<p><br/></p>
<jsp:include page="/include/footer.jsp" />
</body>
</html>