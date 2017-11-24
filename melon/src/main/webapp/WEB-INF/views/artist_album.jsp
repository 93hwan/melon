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

		<br><h2 align="center">아티스트 채널</h2><br>
		<div class="container">
		<table align="center" class="table table-hover">	
			<tr>
				<td width="300px" rowspan="5" align="center"><img align="middle" src="http://cdnimg.melon.co.kr/cm/artistcrop/images/007/92/022/792022_500.jpg/melon/resize/208/quality/80/optimize" title="가수이미지"/></td>
				<td><font style="font-weight: bold; font-size: xx-large;" >볼빨간사춘기</font><br></td>
			</tr>
			<tr>
				<td >가수소개</td>
			</tr>		
			<tr>
				<td>수상경력	<br>
				</td>
			</tr>	
		</table>
		
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
  			<td align="center"><img src="http://cdnimg.melon.co.kr/cm/album/images/101/00/191/10100191_500.jpg/melon/resize/130/quality/80/optimize" alt="앨범사진"></img></td>
  			<td>
  			<br>
  			<strong>앨범명</strong><br>
  			가수명<br>
  			앨범재생<br>
  			앨범출시일 | 곡수 <br>
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