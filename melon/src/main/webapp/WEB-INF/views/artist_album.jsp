<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bee/Artist/Album</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/template/artist_staticPage.jsp" %>
<form action="#" method="post">
	<input type="hidden" value="${arti_main_static.artist_no }" name="artist_no">
<div style="padding-bottom: 200px;" class="container">
  <h3>앨범정보</h3>
  <ul class="nav nav-tabs">
    <li><a href="main?artist_no=${arti_main_static.artist_no }">상세정보</a></li>
    <li><a href="artist_music?artist_no=${arti_main_static.artist_no }">곡</a></li>
    <li class="active"><a href="artist_album?artist_no=${arti_main_static.artist_no }">앨범</a></li>
    <li><a href="artist_video?artist_no=${arti_main_static.artist_no }">뮤직비디오</a></li>
    <li><a href="artist_reply?artist_no=${arti_main_static.artist_no }">가수에게 한마디</a></li>
  </ul>	
	<br><br>  	
  <table  class="table table-hover" align="center">
  		<tr>
  	<c:forEach items="${arti_album}" varStatus="status" var="i">
  			<td align="center"><br><img src="${i.img}" alt="앨범사진" width="170px" height="170px"></img></td>
  			<td> <br>
  			<strong>${i.album_title}</strong><br><br>
  			${i.artist_name}<br>
  			앨범재생<br>
  			${i.release} | 곡수 <br><br>
  			<button class="btn btn-default">앨범듣기</button>&nbsp;<button class="btn btn-default">앨범담기</button>
  			</td>
  	</c:forEach>
  		</tr>
  	</table>
	</div>
	</form>
</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>