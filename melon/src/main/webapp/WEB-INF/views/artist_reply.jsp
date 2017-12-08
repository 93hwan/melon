<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Bee/Artist/Comment</title>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<%@ include file="/WEB-INF/views/template/artist_staticPage.jsp" %>
<div class="container">
  <h3>앨범정보</h3>
  <ul class="nav nav-tabs">
    <li><a href="main?artist_no=792022">상세정보</a></li>
    <li><a href="artist_music?artist_no=792022">곡</a></li>
    <li><a href="artist_album?artist_no=792022">앨범</a></li>
    <li><a href="artist_video?artist_no=792022">뮤직비디오</a></li>
    <li class="active"><a href="artist_reply?artist_no=792022">가수에게 한마디</a></li>
  </ul>	
  	<br>
  <form action="${pageContext.request.contextPath}/artist_comment_send" method="post" >
  <input type="hidden" name="artist_No" value="${artist_comment_send.artist_no}">
  <input type="hidden" name="member_id" value="${artist_comment_send.member_id}">
  	<br>
  <table  class="table table-hover" align="center">
  	<tr>
  		
  		<td align="center">
  			<br>
  			<img width="70dp" height="70dp" src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_face_black_48dp.png" title="프로필사진"/>
  		</td>
  		<td width="723" align="center">
  			<br>
  			<div><textarea name="reply" rows="5" cols="100" style="resize: none;"></textarea></div>
  			<br>
  		</td>
  		<td align="center">
  			<br><br>
  			<input type="submit" onclick="location.href='${pageContext.request.contextPath}/artist_comment_send'" value="등록하기" class="btn btn-default" >
  		</td>
  	</tr>
  	
  </table>
  </form>
  
  <table class="table table-hover" align="center">
  <tr>
 	총<a> 100</a>개<br>
  	<td colspan="3">
  		<br><br>
  	</td>
  	
  </tr>
  	<c:forEach varStatus="status" items="${arti_comment }" var="i" >
  		<tr >
  			<td style="padding-left: 40px"><img width="50dp" height="50dp" src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_account_circle_black_48dp.png" title="프로필사진">${i.member_id }아이디</td>
  			<td><p>${i.reply }</p>
  				<br>${i.reg }
  			</td>
  			<td><img width="20dp" height="20dp" src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_pan_tool_black_48dp.png" onclick="#"></td>
  		</tr>
	</c:forEach>
  </table>
	</div>
</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>