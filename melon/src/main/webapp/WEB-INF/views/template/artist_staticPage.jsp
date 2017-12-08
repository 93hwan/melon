<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div>
<input type="hidden" name="arti_no" value="${arti_main_static.artist_no}" />
		<br><br><br><br><br>
		<div class="container">
		<table align="center" class="table table-hover" >
		<tr>
		<td colspan="2"><h3>아티스트 채널</h3></td>
		</tr>	
			<tr>
				<td width="350px" rowspan="5" align="center"><br><img align="middle" src="${arti_main_static.img}" width="250px" height="250px" title="가수이미지"/></td>
				<td><font style="font-weight: bold; font-size: xx-large;" >${arti_main_static.artist_name}</font><br></td>
			</tr>
			<tr>
				<td>
				<div class="arti_info" style="float: left; padding-right: 30px" >${arti_main_static.arti_infotitle }<br></div>
				${arti_main_static.arti_infocontent }<br><br>
				</td>
			</tr>		
			<tr>
				<td><h4>수상경력</h4>
				${arti_main_static.award_record}
				</td>
			</tr>	
		</table>
		</div>
	</div>
</body>
</html>