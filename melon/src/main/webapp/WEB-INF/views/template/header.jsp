<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<title>Bee</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="css/layer_popup.css" />
<link rel="stylesheet" type="text/css" href="css/cancel_rsv.css" />


<!-- 음악 플레이어 -->
<link href="css/jplayer.blue.monday.min.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.jplayer.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jplayer.playlist.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/playlist.js"></script>
<link rel="stylesheet" type="text/css" href="css/playlist.css" />

<!-- 검색 헤더 -->
<link rel="stylesheet" type="text/css" href="css/header.css" />


<style>

@font-face{
font-family: 'binggrae';
src: url('/font/binggrae.ttf') format("truetype");
}
body, h1, h2, h3, h4, h5, h6 {
	font-family: 'binggrae';
}

body, html {
	height: 100%;
	line-height: 1.8;
}
/* Full height image header */
.bgimg-1 {
	background-position: center;
	background-size: cover;
	background-image: url("/w3images/mac.jpg");
	min-height: 100%;
}

.w3-bar .w3-button {
	padding: 16px;
}

.w3-bottom {
	height: 60px;
	bottom: 0;
	display: inline-block;
}
.w3-button:hover {
    color: white !important;
    background-color: #333333 !important;
}
#gold:hover{
    color: white !important;
    background-color: #ffc300 !important;
}

.bottom-shadow {
	height: 60px;
	box-shadow: 0 -2px 5px 0 rgba(0, 0, 0, 0.16), 0 -2px 10px 0
		rgba(0, 0, 0, 0.12);
}
</style>
<body>

	<!-- Navbar (sit on top) -->
	<div class="w3-top">
		<div class="w3-bar w3-white w3-card" id="myNavbar">
			<!-- 로고 헤더 -->
			<div class="top_header">
				<div class="top_logo">
					<a href="${pageContext.request.contextPath}">
					<img 	src="${pageContext.request.contextPath}/img/bee.jpg" width="80" height="40"></a>
				</div>

				<form class="top_search" action="${pageContext.request.contextPath}" method="post">
					<select name="choice">
						<option value="노래">노래 제목</option>
						<option value="가수">가수 명</option>
						<option value="앨범">앨범 명</option>
					</select>
					<input type="search" placeholder="검색어 입력">
					<input type="image" src="${pageContext.request.contextPath}/img/search.png "  width="40" height="33">
				</form>



				<!-- Right-sided navbar links -->
				<div class="w3-right w3-hide-small">
					
					<a href="#" class="loginbtn w3-bar-item w3-button">마이페이지</a>
					<a href="#" class="loginbtn w3-bar-item w3-button" id="gold">이용권</a>
					<sec:authorize access="!isAuthenticated()">
						<a href="javaScript:void(0);"
							class="loginbtn w3-bar-item w3-button">로그인</a>
					</sec:authorize>
					<sec:authorize access="isAuthenticated()">
						<a	href="${pageContext.request.contextPath}"
							class="w3-bar-item w3-button">로그아웃</a>
					</sec:authorize>

				</div>
				
			</div>
		</div>
	</div>