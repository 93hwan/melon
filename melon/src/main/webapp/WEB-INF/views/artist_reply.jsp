<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Melon/Artist/Comment</title>

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
    <li><a href="artist_album">앨범</a></li>
    <li><a href="artist_video">뮤직비디오</a></li>
    <li class="active"><a href="artist_reply">가수에게 한마디</a></li>
  </ul>	
  <form action="/artist_comment_send" method="post" >
  <input type="hidden" name="artist_No" value="${artist_comment_send.artist_no}">
  <input type="hidden" name="member_id" value="${artist_comment_send.member_id}">
  <table  class="table table-hover" align="center">
 	 <tr>
  			<td colspan="7"></td>
  	</tr>
  	
  	<tr>
  		<td align="center"><img width="60dp" height="60dp" src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_face_black_48dp.png" title="프로필사진"/></td>
  		<td align="center"><textarea name="reply" rows="5" cols="100"></textarea></td>
  		<td><input type="submit" onclick="location.href='${pageContext.request.contextPath}/artist_comment_send'" width="50dp" height="50dp" value="등록하기" class="btn btn-default" ></td>
  	</tr>
  	
  </table>
  </form>
  
  <table class="table table-hover" align="center">
  	<c:forEach step="1" begin="0" end="5" var="i" >
  		<tr >
  			<td align="center"><img width="40dp" height="40dp" src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_account_circle_black_48dp.png" title="프로필사진">${arti_comment.member_id }아이디</td>
  			<td bordercolor=""><p>comment 내용</p></td>
  			<td align="center"><img width="20dp" height="20dp" src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_pan_tool_black_48dp.png" onclick="#"></td>
  		</tr>
  	
	</c:forEach>
  </table>
	</div>
</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>