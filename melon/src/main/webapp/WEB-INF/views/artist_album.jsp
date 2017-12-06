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
	<input type="hidden" value="${arti_no }" name="artist_no">
<div class="container">
  <h3>앨범정보</h3>
  <ul class="nav nav-tabs">
    <li><a href="main?artist_no=792022">상세정보</a></li>
    <li><a href="artist_music">곡</a></li>
    <li class="active"><a href="artist_album">앨범</a></li>
    <li><a href="artist_video">뮤직비디오</a></li>
    <li><a href="artist_reply">가수에게 한마디</a></li>
  </ul>	
  <table  class="table table-hover" align="center">
 	 <tr>
  			<td colspan="7"></td>
  	</tr>
  	
  	<c:forEach items="${arti_albumList}" varStatus="status" var="i">
  		<tr>
  			<td align="center"><img src="${i.img}" alt="앨범사진"></img></td>
  			<td>
  			<br>
  			<strong>${i.album_title}</strong><br>
  			${i.artist_name}<br>
  			앨범재생<br>
  			${i.release} | 곡수 <br>
  			</td>
  		</tr>
  	</c:forEach>
  	</table>
	</div>
	</form>
</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>