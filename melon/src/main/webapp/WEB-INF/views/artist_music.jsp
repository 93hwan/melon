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

	<h2>��Ƽ��Ʈ ä��</h2>
		<table>		<!-- ��Ƽ��Ʈ���������� ������ų ���̺� -->
			<tr>
				<td rowspan="5"><img src="https://www.google.co.kr/imgres?imgurl=http%3A%2F%2Ffile2.nocutnews.co.kr%2Fnewsroom%2Fimage%2F2017%2F06%2F16%2F20170616121543807355.jpg&imgrefurl=http%3A%2F%2Fwww.nocutnews.co.kr%2Fnews%2F4800533&docid=Hm6Twn_8p15UDM&tbnid=IwqjVQ-TdG76oM%3A&vet=10ahUKEwiZiurQxMfXAhVBq5QKHbCCAuEQMwg0KBAwEA..i&w=550&h=704&bih=816&biw=1707&q=%ED%8A%B8%EC%99%80%EC%9D%B4%EC%8A%A4&ved=0ahUKEwiZiurQxMfXAhVBq5QKHbCCAuEQMwg0KBAwEA&iact=mrc&uact=8" title="�����̹���"></img></td>
				<td><h3>Ʈ���̽�</h3></td>
			</tr>
			<tr>
				<td>etc ���</td>
			</tr>		
			<tr>
				<td>������	<br>
				
				</td>
			</tr>	
		</table>
		
<div class="container">
  <h3>������</h3>
  <ul class="nav nav-tabs">
    <li ><a href="artist_main">������</a></li>
    <li class="active"><a href="artist_music">��</a></li>
    <li><a href="artist_album">�ٹ�</a></li>
    <li><a href="artist_video">��������</a></li>
  </ul>	
  
  <button onclick="" value="��ü����"></button> <!-- üũ�ڽ�-> ���� ��ü���� -->
  <button onclick="" value="�������"></button> <!-- �÷��̸���Ʈ�� ����+��� -->
  <button onclick="" value="���ô��"></button> <!-- �÷��̸���Ʈ�� ���� -->
  	<table  class="table table-hover" align="center">
  		<tr>	
  			<td align="center"><input type="checkbox"></td>
  			<td align="center">NO</td>
  			<td colspan="2"></td>
  			<td align="center">���</td>
  			<td align="center">��Ƽ��Ʈ</td>
  			<td align="center">�ٹ�</td>
  			<td align="center">���ƿ�</td>	<!--  ���Ŀ� �߰� ���� ������ �����ؾ� -->
  			
  		</tr>
  		<c:forEach var="i" begin="1" end="50" step="1">
  			<tr>	
  				<td><input type="checkbox" value=""></td>
  				<td>${i}</td>
  				<td>
  					<img alt="���" title="���" src="/melon/src/main/webapp/resource/img/ic_play_circle_outline_black_48dp.png" onclick="">
  					<img alt="������ ���" title="������ ���" src="/melon/src/main/webapp/resource/img/ic_add_circle_outline_black_48dp.png" onclick="">
  					<img alt="���纸��" src="/melon/src/main/webapp/resource/img/ic_format_align_justify_black_48dp.png" onclick="">
  				</td>
  				<td>���</td>
  				<td>��Ƽ��Ʈ</td>
  				<td>�ٹ�</td>
  				<td><img alt="���ƿ�" src="/melon/src/main/webapp/resource/img/ic_favorite_border_black_48dp (1).png"></td>	<!--  ���Ŀ� �߰� ���� ������ �����ؾ� -->
  		</tr>
  		
  		</c:forEach>
  	
  	</table>
</div>


</body>
</html>