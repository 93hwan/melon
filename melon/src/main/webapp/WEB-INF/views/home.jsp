<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<link rel="stylesheet" type="text/css" href="css/main.css" />

<html>
<head>
<title>Home</title>

</head>
<body>
	<div class="main">
		<div class="content1">
			<div class="genre">
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/rnb.png" width="80"
					height="80""></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/hiphop.png"
					width="80" height="80""></a>
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/ballad.png" width="80"
					height="80""></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/dance.png"
					width="80" height="80""></a>
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/folk.png" width="80"
					height="80""></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/rock.png"
					width="80" height="80""></a>
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/indie.png" width="80"
					height="80""></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/etc.png"
					width="80" height="80"">
				</a>
			</div>
		</div>
		<div class="content2">
			<div class="album">
				<a href="#">최신 앨범 ></a>
				<div class="album_contents">
					<ul>
						<li><a href="#"> <img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="100%" height="85%">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"> <img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="100%" height="85%">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"> <img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="100%" height="85%">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"> <img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="100%" height="85%">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"> <img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="100%" height="85%">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"> <img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="100%" height="85%">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"> <img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="100%" height="85%">
								<center>그린데이</center>
						</a></li>
						<li><a href="#"> <img
								src="http://cdnimg.melon.co.kr/cm/album/images/101/12/164/10112164_500.jpg?91950f466db7e4d388bbbe8e5414557e/melon/quality/80/optimize"
								width="100%" height="85%">
								<center>그린데이</center>
						</a></li>
					</ul>
				</div>
			</div>
			<div class="chart">
				<center>
					<h1>챠트</h1>
				</center>
			</div>
		</div>
		<div class="content3">
			<center>
				<h1>최신 뮤직비디오</h1>
			</center>
			<a href="${pageContext.request.contextPath}/artist/main">테스트 메인</a> <br>
			<br> <a href="${pageContext.request.contextPath}/artist/music">테스트
				뮤직</a> <br>
			<br> <a href="${pageContext.request.contextPath}/artist/album">테스트
				앨범</a> <br>
			<br> <a href="${pageContext.request.contextPath}/artist/video">테스트
				비디오</a>
		</div>

	</div>




</body>
</html>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>