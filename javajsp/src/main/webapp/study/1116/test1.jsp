<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>test1.jsp</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
</head>
<body>
<p><br/></p>
<div class="container">
  <form name="myform" method="post" action="test1Ok.jsp">
  	<div class="border m-4 p-4">
	    <div><h2 class="text-center">로 그 인</h2></div>
	    <hr/>
	    <p>
	      아이디 : <input type="text" name="mid" id="mid" value="admin" placeholder="아이디를 입력하세요" autofocus required class="form-control"/>
	    </p>
	    <p>
	      비밀번호 : <input type="password" name="pwd" id="pwd" value="1234" placeholder="비밀번호를 입력하세요" class="form-control"/>
	    </p>
	    <p>
	      성 명 : <input type="text" name="name" id="name" value="홍길동" placeholder="성명을 입력하세요" required class="form-control"/>
	    </p>
	  	<div class="row text-center">
	  	  <div class="col"><input type="submit" value="전송" class="btn btn-success form-control"/></div>
	  	  <div class="col"><input type="reset" value="다시입력" class="btn btn-warning form-control"/></div>
	  	</div>
  	</div>
  </form>
</div>
<p><br/></p>
</body>
</html>