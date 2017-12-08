<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/template/header.jsp"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="css/artist.css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Bee/Artist/Main</title>
</head>
<body>
	    <%@ include file="/WEB-INF/views/template/artist_staticPage.jsp"%>
<div style="padding-bottom: 200px;" class="container">
  <h3>상세정보</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a href="main">상세정보</a></li>
    <li><a href="artist_music">곡</a></li>
    <li><a href="artist_album">앨범</a></li>
    <li><a href="artist_video">뮤직비디오</a></li>
      <li><a href="artist_reply">가수에게 한마디</a></li>
  </ul>	
  	<br><br>
		<table align="center" class="table table-hover"> <!--  상세정보 테이블 -->
			<tr>
				<td><h3>수상경력</h3> <br>
				${arti_main_static.award_record}
				<br><br>
				</td>
			</tr>
			<tr>
				<td><h3>가수소개</h3>
 				<div class="arti_info" style="float: left; padding-right: 30px" >${arti_main_static.arti_infotitle }<br></div>
				<div class="arti_content">${arti_main_static.arti_infocontent }<br><br><br></div>
				</td>
			</tr>
		</table>
</div>
</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>