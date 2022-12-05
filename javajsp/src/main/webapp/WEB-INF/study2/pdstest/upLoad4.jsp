<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>upLoad4.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
</head>
<script>
	'use strict'

	
	function fCheck(){
		let fName = $("#fName").val();
		let maxSize = 1024 * 1024 * 20; //업로드 가능한 최대 파일의 용량은 10MByte로 한다.
		 
		
		if(fName.trim() == ""){
			alert("업로드할 파일을 선택하세요.");
			return;			
		}
		let fileLength = document.getElementById("fName").files.length;
		let fileSize = 0;
		
		for(let i = 0; i < fileLength; i++){
			fName = document.getElementById("fName").files[i].name;
		  let ext = fName.substring(fName.lastIndexOf(".")+1); // 확장자 발췌
			let uExt = ext.toUpperCase();
			fileSize += document.getElementById("fName").files[i].size;
			
			if(uExt != "JPG" && uExt != "PNG" && uExt != "GIF" && uExt != "ZIP" && uExt != "TXT" && uExt != "PPTX")
				alert("업로드 가능한 파일은 'JPG/GIF/PNG/ZIP/TXT/PPTX' 입니다.");
		}
		 	if(maxSize < fileSize){
				alert("업로드 가능한 파일의 최대 용량은 20MByte입니다.");
				return;
		 	}
		 	else 
			myform.submit();		
	}
	
	
</script>
<body>
	<jsp:include page="/include/header.jsp"/>
	<p><br/></p>
	<div class="container">
	  <h2>파일 업로드 테스트3 (멀티파일처리)</h2>
	  <p>cos라이브러리를 이용한 파일 업로드</p>
	  <p><font color="blue">여러개의 파일을 선택할 경우는 'Ctrl+클릭/Shift+클릭' 하세요.</font></p>
		<form name="myform" method="post" action="${ctp}/upLoad2Ok.st" enctype="multipart/form-data">
			<div>
				파일명 : 
				<input type="file" name="fName" id="fName" class="form-control-file border" multiple/>
			</div>
			<div>
				<input type="button" value="전송" onclick="fCheck()" class="btn btn-primary form-control"/>
			</div>	
			<input type="hidden" name="sw" value="4"/>
		</form>
		<hr><br/>
		<input type="button" value="다운로드폼으로" onclick="location.href='${ctp}/downLoad.st'" class="btn btn-info form-control"/>
	</div>
	<p><br/></p>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>