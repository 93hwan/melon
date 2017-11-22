<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Melon/Artist/Music</title>
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
				<td><h3>볼빨간사춘기</h3></td>
			</tr>
			<tr>
				<td>etc 출력</td>
			</tr>		
			<tr>
				<td>수상경력	<br>
				
				</td>
			</tr>	
		</table>
		
  <h3>곡정보</h3>
  <ul class="nav nav-tabs">
    <li ><a href="artist">상세정보</a></li>
    <li class="active"><a href="artist_music">곡</a></li>
    <li><a href="artist_album">앨범</a></li>
    <li><a href="artist_video">뮤직비디오</a></li>
  </ul>	
  
  <button onclick="" value="전체선택"></button> <!-- 체크박스-> 곡목록 전체선택 -->
  <button onclick="" value="선택재생"></button> <!-- 플레이리스트에 저장+재생 -->
  <button onclick="" value="선택담기"></button> <!-- 플레이리스트에 저장 -->
  	<table  class="table table-hover" align="center">
  		<tr>	
  			<td align="center"><input type="checkbox"></td>
  			<td align="center">NO</td>
  			<td align="center"></td>
  			<td align="center">곡명</td>
  			<td align="center">아티스트</td>
  			<td align="center">앨범</td>
  			<td align="center">좋아요</td>	<!--  이후에 추가 할지 안할지 결정해야 -->
  			
  		</tr>
  		<c:forEach var="i" begin="1" end="50" step="1">
  			<tr>	
  				<td align="center"><input type="checkbox" value=""></td>
  				<td align="center">${i}</td>
  				<td align="center"> 
  					<img alt="재생" title="재생" src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_play_circle_outline_black_48dp.png" width="10px" height="10px" onclick="">
  					<img alt="재생목록 담기" title="재생목록 담기" src="https://raw.githubusercontent.com/google/material-design-icons/master/content/2x_web/ic_add_circle_outline_black_48dp.png" width="10px" height="10px" onclick="">
  					<img alt="가사보기" src="https://raw.githubusercontent.com/google/material-design-icons/master/editor/2x_web/ic_format_align_justify_black_48dp.png" width="10px" height="10px" onclick="">
  				</td>
  				<td>곡명</td>
  				<td align="center">아티스트</td>
  				<td align="center">앨범</td>
  				<td><img alt="좋아요" src="https://www.google.co.kr/url?sa=i&rct=j&q=&esrc=s&source=images&cd=&cad=rja&uact=8&ved=0ahUKEwiqvpDX7dHXAhWBUZQKHXQMBc8QjRwIBw&url=https%3A%2F%2Fwww.clker.com%2Fclipart-yellow-heart-3.html&psig=AOvVaw2XIfT8Ieq3CS5LWJiTFnok&ust=1511428924691123"></td>	<!--  이후에 추가 할지 안할지 결정해야 -->
  		</tr>
  		
  		</c:forEach>
  	
  	</table>
</div>


</body>
</html>