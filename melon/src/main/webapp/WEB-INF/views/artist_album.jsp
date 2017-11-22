<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Melon/Artist/Album</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

		<h2 align="center">아티스트 채널</h2>
		<div class="container">
		<table align="center" class="table table-hover">	
			<tr>
				<td rowspan="5"><img align="middle" src="http://cdnimg.melon.co.kr/cm/artistcrop/images/007/92/022/792022_500.jpg/melon/resize/208/quality/80/optimize" title="가수이미지"></img></td>
				<td><h3>트와이스</h3></td>
			</tr>
			<tr>
				<td>etc 출력</td>
			</tr>		
			<tr>
				<td>수상경력	<br>
				
				</td>
			</tr>	
		</table>
		
  <h3>앨범정보</h3>
  <ul class="nav nav-tabs">
    <li><a href="artist_main">상세정보</a></li>
    <li><a href="artist_music">곡</a></li>
    <li class="active"><a href="artist_album">앨범</a></li>
    <li><a href="artist_video">뮤직비디오</a></li>
  </ul>	
  <table  class="table table-hover" align="center">
  	<c:forEach var="i" begin="1" end="1" step="1">
  		<tr>
  			<td><img src="" alt=""></img></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  			<td></td>
  		</tr>
  	</c:forEach>
  	</table>
  
</div>
</body>
</html>