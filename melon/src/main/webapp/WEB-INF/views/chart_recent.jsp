<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="/WEB-INF/views/template/header.jsp"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" style="padding-top:100px; padding-bottom:100px;">
<h2>최신곡</h2>
	<table class="table table-hover" align="center">
		<tr>
			<td>선택</td> 
			<td>번호 </td>
			<td align="center">가사	</td>
			<!-- <td>앨범사진&nbsp;&nbsp;</td> -->
			<td align="center">곡제목</td>
			<td align="center">아티스트</td>
			<td align="center">앨범명</td>
			<td>재생</td>
			<td>추가</td>
			<td>좋아요</td>
			<td>뮤비</td>
		</tr>
		<c:forEach items="${recentChart_music}" varStatus="status" var="i">
		<tr>
			<td align="center"><input type="checkbox" name="select_song"></input></td>
			<td align="center">${status.index+1 }<!-- 번호 --></td>
			<td align="center"><img alt="가사보기" src="https://raw.githubusercontent.com/google/material-design-icons/master/editor/2x_web/ic_format_align_justify_black_48dp.png" width="20px" height="20px" 
  								onclick="location.href='${pageContext.request.contextPath}/album/music_info/${i.music_no }'"></td>
			<%-- <img src="${i.img}" onclick="location.href='${pageContext.request.contextPath}/album/album_main/${i.album_no}'" alt="앨범사진" width="170px" height="170px"></img> --%>
			<td align="center"><a href="${pageContext.request.contextPath}/album/music_info/${i.music_no }">${i.title}</a></td>
			<td align="center"><a href="${pageContext.request.contextPath}/artist/main/${i.artist_no }">${i.artist_name}</a></td>
			<td align="center"><a href="${pageContext.request.contextPath}/album/album_main/${i.album_no }">${i.album_title }</a></td>
				
			<td align="center">	<img alt="재생" title="재생" src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_play_circle_outline_black_48dp.png" width="20px" height="20px" onclick=""></td>
  			<td align="center">	&nbsp;&nbsp;<img alt="재생목록 담기" title="재생목록 담기" src="https://raw.githubusercontent.com/google/material-design-icons/master/content/2x_web/ic_add_circle_outline_black_48dp.png" width="20px" height="20px" onclick=""></td>
			<td align="center">	&nbsp;&nbsp;<img alt="좋아요" src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_favorite_border_black_48dp.png" width="20px" height="20px" onclick=""></td>
			<td align="center">	&nbsp;&nbsp;<img alt="뮤직비디오" title="뮤직비디오" src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_videocam_black_48dp.png" width="20px" height="20px" onclick=""></td>
		</tr>
		</c:forEach>
	</table>
</div>




</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>