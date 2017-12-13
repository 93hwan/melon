<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/template/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div style="padding-top:100px;">
<input type="hidden" name="album_no" value="${music_info.music_no}" />
		<br><h2 style="margin-left: 200px; font-weight: bold;">곡정보</h2><br>
		<div class="container">
		<table align="center" class="table table-hover">	
			<tr>
				<td rowspan="5" align="center"><img width="350px" height="350px" src="${album_main.img}" title="앨범이미지"/></td>
				<td><font style="font-weight: bold; font-size: xx-large;" >${music_info.title}</font><br></td>
			</tr>
			<tr>
				<td>앨범명<br>
				<h4><a href="${pageContext.request.contextPath}/album/album_main/${music_info.album_no }">${music_info.album_title }</a></h4></td>
			</tr>
				<td colspan="5"><h4><a href="${pageContext.request.contextPath}/artist/main/${music_info.artist_no}">${music_info.artist_name }</a></h4></td>
			<tr>
				<td colspan="5"><h4>발매일 &nbsp;&nbsp; ${album_main.release }</h4></td>
			</tr>
			<tr>
				<td colspan="3"><h4 style="float : left; padding-right: 50px">장르 &nbsp;&nbsp; ${music_info.genre } </h4></td>
			</tr>
		</table>
		</div>
	</div>
		<div class="container" style=" padding-bottom:200px;">
		<table align="center" class="table table-hover">	
			<tr>
				<td><h2>가사<br></h2>
			${music_info.lyrics } </td>
			</tr>
		</table>
		</div>

</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>