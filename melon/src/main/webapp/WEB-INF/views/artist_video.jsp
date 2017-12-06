<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="/WEB-INF/views/template/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bee/Artist/Video</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
  <%@ include file="/WEB-INF/views/template/artist_staticPage.jsp"%>
<div class="container">
  <h3>뮤직비디오</h3>
  <ul class="nav nav-tabs">
    <li ><a href="main?artist_no=792022">상세정보</a></li>
    <li><a href="artist_music">곡</a></li>
    <li><a href="artist_album">앨범</a></li>
    <li class="active"><a href="artist_video">뮤직비디오</a></li>
    <li><a href="artist_reply">가수에게 한마디</a></li>
    
  </ul>	
</div>

	<div class="container">
		<table align="center" class="table table-hover">
		<tr>
  			<td colspan="7"></td>
  		</tr>
		<tr>
			<td colspan="4"></td>
		</tr>
		<c:forEach begin="0" end="2" step="1">
			<tr>
				<td><img  height="180dp" width="300dp" src="http://cdnimg.melon.co.kr/cm/album/images/101/00/191/10100191_500.jpg/melon/resize/130/quality/80/optimize" onclick=""><br>
					<br>
					<strong>뮤직비디오 타이틀</strong><br>
					가수<br>
					조회수 &nbsp; <img alt="좋아요" src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_play_circle_outline_black_48dp.png" width="20px" height="20px" onclick=""><br>
				</td>
				<td><img height="180dp" width="300dp" src="http://cdnimg.melon.co.kr/cm/album/images/100/70/846/10070846_500.jpg/melon/resize/130/quality/80/optimize" onclick=""><br>
					<br>
					<strong>뮤직비디오 타이틀</strong><br>
					가수<br>
					조회수 &nbsp;<img alt="좋아요" src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_play_circle_outline_black_48dp.png" width="20px" height="20px" onclick=""><br>
				</td>
				<td><img height="180dp" width="300dp" src="http://cdnimg.melon.co.kr/cm/album/images/027/07/131/2707131_500.jpg/melon/resize/130/quality/80/optimize" onclick=""><br>
					<br>
					<strong>뮤직비디오 타이틀</strong><br>
					가수<br>
					조회수 &nbsp; <img alt="좋아요" src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_play_circle_outline_black_48dp.png" width="20px" height="20px" onclick=""><br>
				</td>
				<td><img height="180dp" width="300dp" src="http://cdnimg.melon.co.kr/cm/album/images/100/24/816/10024816_500.jpg/melon/resize/130/quality/80/optimize" onclick=""><br>
					<br>
					<strong>뮤직비디오 타이틀</strong><br>
					가수<br>
					조회수 &nbsp; <img alt="좋아요" src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_play_circle_outline_black_48dp.png" width="20px" height="20px" onclick=""><br>
				</td>
			</tr>
		</c:forEach>
		</table>	
	</div>

</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>