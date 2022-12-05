<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	 <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>upLoad1.jsp</title>
  <jsp:include page="/include/bs4.jsp"></jsp:include>
</head>
<script>
	'use strict'
	
	function fCheck(){
		let fName1 = $("#file1").val();
		let fName2 = $("#file2").val();
		let fName3 = $("#file3").val();
		
		let ext1 = fName1.substring(fName1.lastIndexOf(".")+1); // 확장자 발췌
		let ext2 = fName2.substring(fName2.lastIndexOf(".")+1); // 확장자 발췌
		let ext3 = fName3.substring(fName3.lastIndexOf(".")+1); // 확장자 발췌
		let uExt1 = ext1.toUpperCase();
		let uExt2 = ext2.toUpperCase();
		let uExt3 = ext3.toUpperCase();
		let maxSize = 1024 * 1024 * 10; //업로드 가능한 최대 파일의 용량은 10MByte로 한다.
		
		
		if(fName1.trim() == "")
			alert("업로드할 파일을 3개 모두 선택하세요.");
		else if(fName2.trim() == "")
			alert("업로드할 파일을 3개 모두 선택하세요.");
		else if(fName3.trim() == ""){
			alert("업로드할 파일을 3개 모두 선택하세요.");
			return;			
		}
		
		let fileSize1 = document.getElementById("file1").files[0].size;
		let fileSize2 = document.getElementById("file2").files[0].size;
		let fileSize3 = document.getElementById("file3").files[0].size;
		
		/* for(let i = 0; i < 3; i++){
			if(uExt+i != "JPG" && uExt+i != "PNG" && uExt+i != "GIF" && uExt+i != "ZIP" && uExt+i != "TXT" && uExt+i != "PPTX"){
				alert("업로드 가능한 파일은 'JPG/GIF/PNG/ZIP/TXT/PPTX' 입니다.");
			}
		} */
		
		if(uExt1 != "JPG" && uExt1 != "PNG" && uExt1 != "GIF" && uExt1 != "ZIP" && uExt1 != "TXT" && uExt1 != "PPTX"){
			alert("업로드 가능한 파일은 'JPG/GIF/PNG/ZIP/TXT/PPTX' 입니다.");
		}
		else if(uExt2 != "JPG" && uExt2 != "PNG" && uExt2 != "GIF" && uExt2 != "ZIP" && uExt2 != "TXT" && uExt2 != "PPTX"){
			alert("업로드 가능한 파일은 'JPG/GIF/PNG/ZIP/TXT/PPTX' 입니다.");
		}
		else if(uExt3 != "JPG" && uExt3 != "PNG" && uExt1 != "GIF" && uExt3 != "ZIP" && uExt3 != "TXT" && uExt3 != "PPTX"){
			alert("업로드 가능한 파일은 'JPG/GIF/PNG/ZIP/TXT/PPTX' 입니다.");
		}
		else if(maxSize < fileSize1 || maxSize < fileSize2 || maxSize < fileSize3){
			alert("업로드 가능한 파일의 최대 용량은 10MByte입니다.");
		}
		else {
			myform.submit();		
		}
	}
</script>
<body>
	<jsp:include page="/include/header.jsp"/>
	<p><br/></p>
	<div class="container">
	  <h2>파일 업로드 테스트1 (멀티파일처리)</h2>
	  <p>cos라이브러리를 이용한 파일 업로드</p>
		<form name="myform" method="post" action="${ctp}/upLoad2Ok.st" enctype="multipart/form-data">
			<div>
				파일명 : 
				<input type="file" name="fName1" id="file1" class="form-control-file border mb-3"/>
				<input type="file" name="fName2" id="file2" class="form-control-file border mb-3"/>
				<input type="file" name="fName3" id="file3" class="form-control-file border mb-3"/>
				<input type="button" value="전송" onclick="fCheck()" class="btn btn-primary form-control"/>
			</div>
			<input type="hidden" name="sw" value="2"/>
		</form>
		<hr><br/>
		
	</div>
	<p><br/></p>
	<jsp:include page="/include/footer.jsp"/>
</body>
</html>