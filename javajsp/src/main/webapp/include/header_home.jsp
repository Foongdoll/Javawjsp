<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    /* height: 100%; */
    height: 200px;
  }
  
  .jb-wrap {
		width: 100%;
		margin: 0px auto;
		position: relative;
	}
	.jb-text {
		padding: 5px 10px;
		/* background-color: white; */
		/* opacity: 0.5; */
		background-color: #ffffff;
    background-color: rgba( 255, 255, 255, 0.3 );
		font-weight: bold;
		text-align: center;
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate( -50%, -50% );
	}
	.jb-wrap img {
		width: 100%;
		vertical-align: middle;
	}
</style>
<div class="jb-wrap">
	<div id="demoView" class="carousel slide jb-img" data-ride="carousel">
	  <!-- Indicators -->
	  <ul class="carousel-indicators">
	    <li data-target="#demoView" data-slide-to="0" class="active"></li>
	    <li data-target="#demoView" data-slide-to="1"></li>
	    <li data-target="#demoView" data-slide-to="2"></li>
	    <li data-target="#demoView" data-slide-to="3"></li>
	  </ul>
	  <!-- The slideshow -->
	  <div class="carousel-inner">
	    <div class="carousel-item active">
	      <img src="<%=request.getContextPath()%>/images/31.jpg" alt="봄의 왈츠" width="100%" height="200px">
	    </div>
	    <div class="carousel-item">
	      <img src="<%=request.getContextPath()%>/images/32.jpg" alt="여름향기" width="100%" height="200px">
	    </div>
	    <div class="carousel-item">
	      <img src="<%=request.getContextPath()%>/images/33.jpg" alt="가을동화" width="100%" height="200px">
	    </div>
	    <div class="carousel-item">
	      <img src="<%=request.getContextPath()%>/images/34.jpg" alt="겨울연가" width="100%" height="200px">
	    </div>
	  </div>
	  <!-- Left and right controls -->
	  <a class="carousel-control-prev" href="#demoView" data-slide="prev">
	    <span class="carousel-control-prev-icon"></span>
	  </a>
	  <a class="carousel-control-next" href="#demoView" data-slide="next">
	    <span class="carousel-control-next-icon"></span>
	  </a>
	</div>
	
	<div class="jb-text">
	  <h2>현우네 집에 오신것을 환영합니다.</h2>      
	  <p>(본페이지는 반응형으로 제작된 JSP 프로젝트입니다.)</p>
	</div>
</div>