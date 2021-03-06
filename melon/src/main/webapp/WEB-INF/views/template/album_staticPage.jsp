<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/template/header.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div style="padding-top:100px;">
<input type="hidden" name="album_no" value="${album_main.album_no}" />
		<br><h2 style="margin-left: 200px; font-weight: bold;">앨범 정보</h2><br>
		<div class="container">
		<table align="center" class="table table-hover">	
			<tr>
				<td rowspan="4" align="center"><img width="350px" height="350px" src="${album_main.img}" title="앨범이미지"/></td>
				<td>앨범명<br>
				<font style="font-weight: bold; font-size: xx-large;"><a href="${pageContext.request.contextPath}/album/album_main/${album_main.album_no}">${album_main.album_title}</a></font><br></td>
			</tr>
			<tr>
				<td colspan="4"><h2><a href="${pageContext.request.contextPath}/artist/main/${album_main.artist_no}">${album_main.artist_name }</a></h2></td>
			</tr>
			<tr>
				<td colspan="4"><h4>발매일 &nbsp;&nbsp; ${album_main.release }</h4></td>
			</tr>
			<tr>
			<c:forEach items="${album_musicList }" varStatus="status" var="i" begin="4" end="4">
				<td colspan="2"><h4 style="float : left; padding-right: 50px">장르 &nbsp;&nbsp; ${i.genre } </h4></td>
			</c:forEach>
			</tr>
		</table>
		</div>
	</div>
</body>
</html>