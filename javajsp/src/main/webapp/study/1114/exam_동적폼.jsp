<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>title</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <style>
    td {text-align: center};
  </style>
  <script>
    'use strict';
    let newText = "";
    let idx = 0;

    // 클릭할때마다 입력폼 추가하기 : 각 TextField마다 고유한 id를 지정한다.(삭제후 추가필드에 대한 처리)
    /*
    function inputBox() {
      idx++;
      newText += '<div id="proTxt'+idx+'" class="mb-3">';
      newText += idx + '. 상품명:<input type="text" name="product" id="product'+idx+'" size="5" /> &nbsp;';
      newText += '가격:<input type="text" name="price" id="price'+idx+'" value="0" size="3" /> &nbsp;';
      newText += '수량:<input type="text" name="su" id="su'+idx+'" value="1" size="2" /> &nbsp;';
      newText += "<input type='button' value='"+idx+".삭제' onclick='deleteBox("+idx+")' /><br/>";
      newText += '</div>';
      demo.innerHTML += newText;
    }
    */
    // 앞의 입력폼에서 테이블처리로 변경해 봤다.
    function inputBox() {
      idx++;
      //newText = demo.textContent;
      newText = '<div id="proTxt'+idx+'" class="mb-3"><table class="table table-striped" width="100%"><tr>';
      newText += '<td><input type="text" name="product" id="product'+idx+'" size="7" /></td>';
      newText += '<td><input type="text" name="price" id="price'+idx+'" size="3" /></td>';
      newText += '<td><input type="text" name="su" id="su'+idx+'" value="1" size="2" /></td>';
      newText += '<td><input type="button" value="삭제" onclick="deleteBox('+idx+')" class="btn-sm btn-secondary" /></td>';
      newText += '</tr></table></div>';
      demo.innerHTML += newText;
    }

    // 삭제버튼 클릭시 동적텍스트박스 삭제하기
    function deleteBox(idx) {
      let proTxt = "proTxt" + idx;
      let item = document.getElementById(proTxt);
      item.parentNode.removeChild(item);
    }

    function reloadCheck() {
      idx = "";
      location.reload();
    }
    
    // 값 체크후 전송하기
    function fCheck() {
    	let name = document.getElementById("name");
    	let part = document.getElementById("part").value;
    	let products = document.getElementsByName("product");
    	let prices = document.getElementsByName("price");
    	let sus = document.getElementsByName("su");
    	let sw = 0;
    	
    	if(name.value.trim() == "") {
    		alert("상품 등록자 성명을 입력하세요!");
    		name.focus();
    		return false;
    	}
    	else if(part.equals == "") {
    		alert("상품 분류를 선택하세요!");
    		return false;
    	}
    	
    	// for(let product of products) {
    	for(let i=0; i<products.length; i++) {
    		if(products[i].value == "") {
    			alert("상품명을 입력하세요");
    			document.getElementById("product"+i).focus();
    			sw = 1;
    			break;
    		}
    		else if(prices[i].value == "") {
    			alert("가격을 입력하세요");
    			document.getElementById("price"+i).focus();
    			sw = 1;
    			break;
    		}
    		else if(sus[i].value == "") {
    			alert("수량을 입력하세요");
    			document.getElementById("su"+i).focus();
    			sw = 1;
    			break;
    		}
    	}
    	if(sw == 1) {
    		return false;
    	}
  		else {
 				myform.submit();
  		}
    }

    // jQuery를 사용한 상품분류 유효성검사하기
    $(function(){
    	$("#part").blur(function(){
    		if($("#part").val() == "") {
    			alert("상품분류를 선택하세요!");
    			return false;
    		}
    	});
   	});
  </script>
</head>
<body>
<p><br/></p>
<div class="container">
  <h2>판매 상품 등록</h2>
  <form name="myform" method="post" action="<%=request.getContextPath()%>/j1114_Exam">
    <p>
      상품 등록자 :
      <input type="text" name="name" id="name" autofocus required class="form-control"/>
    </p>
    <p>
      상품 분류 :
      <select name="part" id="part" class="form-control">
        <option value="">상품을 선택하세요</option>
        <option>전자제품</option>
        <option>의류</option>
        <option>신발류</option>
        <option>생활용품</option>
      </select>
    </p>
    <hr/>
    <p style="text-align:right">
      <input type="button" value="입력창추가" onclick="inputBox()" size="1" class="btn btn-primary"/>
      <input type="button" value="입력창모두제거" onclick="reloadCheck()" class="btn btn-danger"/>
    </p>
    <table class="table table-borderless">
      <tr align="center">
        <th>상품명</th><th>가격</th><th>수량</th><th>비고</th>
      </tr>
      <tr>
        <td colspan="4" align="center">
    			<table class="table table-striped">
    			  <tr>
    			    <td><input type="text" name="product" id="product0" size="7" /></td>
    			    <td><input type="text" name="price" id="price0" size="3"/></td>
    			    <td><input type="text" name="su" id="su0" value="1" size="2"/></td>
    			    <td>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </td>
    			  </tr>
    			</table>          
    			<div id="demo"></div>          
        </td>
      </tr>
    </table>
    <p><input type="button" value="상품가격계산" onclick="fCheck()" class="btn btn-success form-control"/></p>
  </form>
</div>
<p><br/></p>
</body>
</html>