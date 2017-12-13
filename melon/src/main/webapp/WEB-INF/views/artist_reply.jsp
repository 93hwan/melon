<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <li><a href="${pageContext.request.contextPath}/artist/main/${arti_main_static.artist_no }">상세정보</a></li>
    <li><a href="${pageContext.request.contextPath}/artist/artist_music/${arti_main_static.artist_no }">곡</a></li>
    <li><a href="${pageContext.request.contextPath}/artist/artist_album/${arti_main_static.artist_no }">앨범</a></li>
    <li><a href="${pageContext.request.contextPath}/artist/artist_video/${arti_main_static.artist_no }">뮤직비디오</a></li>
    <li class="active"><a href="${pageContext.request.contextPath}/artist/artist_reply/${arti_main_static.artist_no }">가수에게 한마디</a></li>
  </ul>	
  	<br>
  <form action="${pageContext.request.contextPath}/artist/artist_comment_send" method="post" >
  	<input type="hidden" name="artist_no" value="${arti_main_static.artist_no }">
  	<br>
  <table  class="table table-hover" align="center">
  	<tr>
  		
  		<td align="center">
  			<br>
  			<img width="70dp" height="70dp" src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_face_black_48dp.png" title="프로필사진"/>
  		</td>
  		<td width="720" align="center" style="padding-top: 50px;padding-bottom: 50px;">
  			<div><textarea name="reply" rows="5" cols="100" style="resize: none;"></textarea></div>
  		</td>
  		<td align="center">
  			<br><br>
  			<input type="submit" onclick="location.href='${pageContext.request.contextPath}/artist/artist_comment_send'" value="등록하기" class="btn btn-default" >
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