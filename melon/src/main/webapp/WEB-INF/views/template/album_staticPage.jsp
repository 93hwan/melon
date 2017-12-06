<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<div>
<input type="hidden" name="album_no" value="${album_main.album_no}" />
		<br><h2 align="center">앨범 정보</h2><br>
		<div class="container">
		<table align="center" class="table table-hover">	
			<tr>
				<td width="300px" rowspan="5" align="center"><img align="middle" src="${album_main.img}" title="앨범이미지"/></td>
				<td><font style="font-weight: bold; font-size: xx-large;" >${album_main.album_title}</font><br></td>
			</tr>
			<tr>
				<td><h4>${album_main.artist_name }</h4></td>
			</tr>
			<tr>
				<td><h5>발매일</h5></td>
				<td><h3>${album_main.release }</h3></td>
			</tr>
			<tr>
				<td><h5>장르</h5></td>
				<td><h3>R&B/Soul</h3></td>
			</tr>
			<tr>
				<td><h5>발매사</h5></td>
				<td><h3>CJ E&M MUSIC</h3></td>
			</tr>
		</table>
		</div>
	</div>
</body>
</html>