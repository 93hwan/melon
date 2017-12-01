<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="/WEB-INF/views/template/header.jsp"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Bee/Artist/Main</title>
</head>
<body>
	    <%@ include file="/WEB-INF/views/template/artist_staticPage.jsp"%>
<div class="container">
  <h3>상세정보</h3>
  <ul class="nav nav-tabs">
    <li class="active"><a href="main">상세정보</a></li>
    <li><a href="artist_music">곡</a></li>
    <li><a href="artist_album">앨범</a></li>
    <li><a href="artist_video">뮤직비디오</a></li>
      <li><a href="artist_reply">가수에게 한마디</a></li>
  </ul>	
		<table align="center" class="table table-hover"> <!--  상세정보 테이블 -->
		<tr>
  			<td colspan="7"></td>
  		</tr>
			<tr>
				<td><h3>수상경력</h3> <br>
				${arti_main.award_record}
				
				</td>
			</tr>
			<tr>
				<td><h3>가수소개</h3><br>
				
				${arti_main.etc }<br>
				-----------------------------------------------------
				
				서툴고 미숙한 시기, 사춘기라는 이유만으로도 포용할 수 있는 그런 때가 있다.
				순수하고 솔직한, 때 타지 않은 말간 감성들을 담아 노래하고픈 볼빨간사춘기.
				그대들의 싱그러웠던 사춘기 잔상을 톡톡 튀는 음악으로 전하고자 한다.

				안지영(보컬), 우지윤(베이스, 기타, 서브보컬, 랩)으로 구성된 볼빨간사춘기는 2016년 4월 22일 Half Album 'RED ICKLE'로 데뷔, 작사/작곡/연주 까지 모든 작업을 직접 하는 실력파 여성 듀오이다.
				
				</td>
			</tr>		
		</table>
</div>
</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>