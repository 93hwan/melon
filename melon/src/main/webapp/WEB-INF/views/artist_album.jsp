<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Melon/Artist/Album</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/template/artist_staticPage.jsp" %>
<div class="container">
  <h3>앨범정보</h3>
  <ul class="nav nav-tabs">
    <li><a href="main">상세정보</a></li>
    <li><a href="artist_music">곡</a></li>
    <li class="active"><a href="artist_album">앨범</a></li>
    <li><a href="artist_video">뮤직비디오</a></li>
  </ul>	
  <table  class="table table-hover" align="center">
 	 <tr>
  			<td colspan="7"></td>
  	</tr>
  	
  	<c:forEach var="i" begin="1" end="3" step="1">
  		<tr>
  			<td align="center"><img src="${arti_album.img}" alt="앨범사진"></img></td>
  			<td>
  			<br>
  			<strong>${arti_album.album_title}</strong><br>
  			${arti_album.artist_name}<br>
  			앨범재생<br>
  			${arti_album.release} | 곡수 <br>
  			</td>
  			
  			<td align="center"><img src="http://cdnimg.melon.co.kr/cm/album/images/100/70/846/10070846_500.jpg/melon/resize/130/quality/80/optimize" alt="앨범사진"></img></td>
  			<td>
  			<br>
  			<strong>앨범명</strong><br>
  			가수명<br>
  			앨범재생<br>
  			앨범출시일 | 곡수 <br>
  			</td>
  			<td align="center"><img src="http://cdnimg.melon.co.kr/cm/album/images/027/07/131/2707131_500.jpg/melon/resize/130/quality/80/optimize" alt="앨범사진"></img></td>
  			<td>
  			<br>
  			<strong>앨범명</strong><br>
  			가수명<br>
  			앨범재생<br>
  			앨범출시일 | 곡수 <br></td>
  		</tr>
  	</c:forEach>
  	</table>
	</div>
</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>