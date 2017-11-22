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
			<center><h1>비디오</h1>	</center>
			<a href="/artist/main">테스트 하시오</a>
		</div>
		<div class="content2">
			<center><h1>차트 순위</h1></center>
		</div>
		<div class="content3">
			<div class="genre">
				<a href="${pageContext.request.contextPath}">
				<img src="${pageContext.request.contextPath}/img/hiphop.png" width="130" height="130""></a>
				<a href="${pageContext.request.contextPath}">
				<img src="${pageContext.request.contextPath}/img/ballad.png" width="130" height="130""></a>
				<a href="${pageContext.request.contextPath}">
				<img src="${pageContext.request.contextPath}/img/dance.png" width="130" height="130""></a>
				<a href="${pageContext.request.contextPath}">
				<img src="${pageContext.request.contextPath}/img/rnb.png" width="130" height="130""></a>
				<a href="${pageContext.request.contextPath}">
				<img src="${pageContext.request.contextPath}/img/folk.png" width="130" height="130""></a>
				<a href="${pageContext.request.contextPath}">
				<img src="${pageContext.request.contextPath}/img/rock.png" width="130" height="130""></a>
				<a href="${pageContext.request.contextPath}">
				<img src="${pageContext.request.contextPath}/img/indie.png" width="130" height="130""></a>
				<a href="${pageContext.request.contextPath}">
				<img src="${pageContext.request.contextPath}/img/etc.png" width="130" height="130""></a>
			
				


			</div>
		</div>
	</div>




</body>
</html>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>