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
  <br><br>
</div>
	<div  style="padding-bottom: 200px;" class="container">
		<table class="table table-hover">
		<c:forEach items="${arti_muVideo}" varStatus="status" var="i">
			<tr>
				<td>
					<iframe width="300dp" height="180dp" src="https://www.youtube.com/${i.video }" frameborder="0"></iframe><br>
					<br>
					<strong><a href="artist_music">${i.title }</a></strong> <img align="middle" alt="좋아요" src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_play_circle_outline_black_48dp.png" width="18px" height="18px" onclick=""><br>
					<a href="main?artist_no=792022">${i.artist_name }</a><br>
					<div style="padding-bottom: 10dp">좋아요 <img alt="좋아요" align="middle" src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_favorite_black_48dp.png" width="15px" height="15px" onclick="">&nbsp; | 조회 164 회 &nbsp;</div>
				</td>
			</tr>
		</c:forEach>
		</table>	
	</div>

</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>