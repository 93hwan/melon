<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    <%@ include file="/WEB-INF/views/template/header.jsp"%>
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
	<div>
		<br><h2 align="center">��Ƽ��Ʈ ä��</h2><br>
		<div class="container">
		<table align="center" class="table table-hover">	
			<tr>
				<td width="300px" rowspan="5" align="center"><img align="middle" src="http://cdnimg.melon.co.kr/cm/artistcrop/images/007/92/022/792022_500.jpg/melon/resize/208/quality/80/optimize" title="�����̹���"/></td>
				<td><font style="font-weight: bold; font-size: xx-large;" >�����������</font></td>
			</tr>
			<tr>
				<td>�����Ұ�</td>
			</tr>		
			<tr>
				<td>������	<br>
				
				</td>
			</tr>	
		</table>
		
  <h3>������</h3>
  <ul class="nav nav-tabs">
    <li ><a href="main">������</a></li>
    <li class="active"><a href="artist_music">��</a></li>
    <li><a href="artist_album">�ٹ�</a></li>
    <li><a href="artist_video">��������</a></li>
  </ul>	
  <br>
  	<table  class="table table-hover" align="center">
  	<tr>
  		<td colspan="7"></td>
  	</tr>
  	<tr>
  		<td colspan="7" align="Right">

 		 <img src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_spellcheck_black_48dp.png" width="25px" height="25px"  onclick=""><!-- üũ�ڽ�-> ���� ��ü���� -->
 		&nbsp;&nbsp;&nbsp;
 		 <img src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_playlist_add_black_48dp.png" width="25px" height="25px"  onclick="" > <!-- �÷��̸���Ʈ�� ����+��� -->
 		&nbsp;&nbsp;&nbsp; 
 		 <img src="https://raw.githubusercontent.com/google/material-design-icons/master/editor/2x_web/ic_vertical_align_bottom_black_48dp.png" width="25px" height="25px"  onclick=""><!-- �÷��̸���Ʈ�� ���� -->
  		&nbsp;&nbsp;&nbsp;
		</td>
  	</tr>
  		<tr >	
  		
  			<td align="center"><input type="checkbox"></td>
  			<td>NO</td>
  			<td align="center"></td>
  			<td align="center">���</td>
  			<td align="center">��Ƽ��Ʈ</td>
  			<td align="center">�ٹ�</td>
  			<td align="center">���ƿ�</td>	<!--  ���Ŀ� �߰� ���� ������ �����ؾ� -->
  			
  		</tr>
  		<c:forEach var="i" begin="1" end="50" step="1">
  			<tr>	
  				<td align="center"><input type="checkbox" value=""></td>
  				<td width="30px">&nbsp;${i}</td>
  				<td width="100px"> 
  					<img alt="���" title="���" src="https://raw.githubusercontent.com/google/material-design-icons/master/av/2x_web/ic_play_circle_outline_black_48dp.png" width="20px" height="20px" onclick="">
  					<img alt="������ ���" title="������ ���" src="https://raw.githubusercontent.com/google/material-design-icons/master/content/2x_web/ic_add_circle_outline_black_48dp.png" width="20px" height="20px" onclick="">
  					<img alt="���纸��" src="https://raw.githubusercontent.com/google/material-design-icons/master/editor/2x_web/ic_format_align_justify_black_48dp.png" width="20px" height="20px" onclick="">
  				</td>
  				<td><a href="artist_music">���</a></td>
  				<td align="center"><a href="artist_main">��Ƽ��Ʈ</a></td>
  				<td align="center"><a href="artist_album">�ٹ�</a></td>
  				<td align="center"><img alt="���ƿ�" src="https://raw.githubusercontent.com/google/material-design-icons/master/action/2x_web/ic_favorite_black_48dp.png" width="20px" height="20px" onclick=""></td>	<!--  ���Ŀ� �߰� ���� ������ �����ؾ� -->
  		</tr>
  		
  		</c:forEach>
  	
  	</table>
</div>
</div>

</body>
</html>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>