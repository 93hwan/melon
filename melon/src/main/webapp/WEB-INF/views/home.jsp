<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<link rel="stylesheet" type="text/css" href="css/main.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<html>
<head>
<title>Home</title>
</head>
<body>
	<div class="main">
		<div class="content1">
			<div class="genre">
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/rnb.png" width="80"
					height="80"></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/hiphop.png"
					width="80" height="80"></a>
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/ballad.png" width="80"
					height="80"></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/dance.png"
					width="80" height="80"></a>
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/folk.png" width="80"
					height="80"></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/rock.png"
					width="80" height="80"></a>
				<a href="${pageContext.request.contextPath}"> <img
					src="${pageContext.request.contextPath}/img/indie.png" width="80"
					height="80"></a>
				<a href="${pageContext.request.contextPath}">
					<img src="${pageContext.request.contextPath}/img/etc.png"
					width="80" height="80"></a>
			</div>
		</div>
		<div class="content2">
			<div class="album">
				<a href="#" id="contents_title" >최신 앨범</a>
				<div class="album_contents">
					<ul>
						<c:forEach items="${album_lateast }" var="list">
							<li>
							<img
								src="${list.img }"
								width="185px" height="195px">
							<div class="album_artist_name">${list.artist_name }</div>
							<div class="album_move"><a href="">${list.album_title }<br>${list.artist_name }</a></div>	
						</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="chart">
				<a href="#" id="contents_title">차트</a>

				<div class="w3-bar chart-btn">
					<button class="w3-bar-item chart-btn country_top"  value="domestic" id="gold">국내 Top</button>
					<button class="w3-bar-item  chart-btn country_top"  value="overseas" id="gold">해외 Top</button>
				</div>
				
<!-- 국내 -->
				<div id="domestic" class="w3-container song">
					<ul>
					<c:forEach items="${chart_domestic}" var="list"  varStatus="status">
						<li class="chart_list">
							<div id="chart_contents" style="width: 5%">${status.index+1} </div>
							<div class="chart_middle" >
								<div  id="chart_contents"  class="chart_img" style="display:none">
									<a href="#"><img src="${list.img}" height="50px" width="50px" ></a>
								</div>
								<div id="chart_contents" >${list.title}</div>
							</div>
							<div id="chart_contents" style="width: 30%">
							<c:if test="${list.artist_name}">
							
							</c:if>${list.artist_name}
							
							</div>
						</li>
					</c:forEach>
					</ul>
				</div>
				
<!-- 해외 -->
				<div id="overseas" class="w3-container song"  style="display: none">
					<ul>
					<c:forEach items="${chart_overseas}" var="list"  varStatus="status">
						<li class="chart_list">
							<div id="chart_contents" style="width: 5%">${status.index+1} </div>
							<div class="chart_middle" >
								<div  id="chart_contents"  class="chart_img" style="display:none">
									<a href="#"><img src="${list.img}" height="50px" width="50px" ></a>
								</div>
								<div id="chart_contents" >${list.title}</div>
							</div>
							<div id="chart_contents" style="width: 30%">
							<c:if test="${list.artist_name}">
							
							</c:if>${list.artist_name}
							
							</div>
						</li>
					</c:forEach>
					</ul>
				</div>


			</div>
		</div>
		<div class="content3">
			<center>
				<h1>최신 뮤직비디오</h1>
			</center>
			<form action="${pageContext.request.contextPath}/artist/main">
				<input type="hidden" name="artist_no" value="792022">
				<input type="submit" value="테스트 메인">
			</form><br>
			<a href="${pageContext.request.contextPath}/album/album_main">테스트 앨범</a> <br>
			<a href="${pageContext.request.contextPath}/album">데이터크롤링</a> <br>
			<iframe width="360" height="202" src="https://www.youtube.com/embed/PLb_YYOPPBI" frameborder="0"></iframe>
			
			<div class="mv_contents">

			</div>
		</div>

	</div>

</body>
</html>
<script>
	<%-- 차트 이벤트 --%>
	 $(document).ready(function(){
		 
		 		$(".chart_list").parent().children().first().addClass("chart_listover").find(".chart_img").css("display","inline-block");
		 		console.log("ㅎㅇ");
		 		console.log($("chart_list").parent());
		 		
			<%--마우스 올릴때--%>
		 	 	$(".chart_list").on("mouseover",function(){
		 	 		$(".chart_list").removeClass("chart_listover").find(".chart_img").css("display","none");
		 	 		$(this).addClass("chart_listover").find(".chart_img").css("display","inline-block");
		 	 		console.log("안녕하세여!");
		 	 	});
		 	 	
		 	 <%-- 제일 첫 차트 사진고정 --%>
		 	 	$(".country_top").on("click",function(){
		 	 		console.log("버튼 눌림???");
		 	 		$(".country_top").removeClass("gold");
		 	 		$(this).addClass("gold");
		 	 		if($(this).val() =="overseas"){
 		 	 			$("#domestic").css("display","none");
		 	 			$("#overseas").css("display","block");
		 	 		 	$("#overseas").find(".chart_list").parent().children().first().addClass("chart_listover").find(".chart_img").css("display","inline-block");
		 	 		 	$("#domestic").find(".chart_list").parent().children().first().removeClass("chart_listover").find(".chart_img").css("display","none");
		 	 		}else{
 		 	 			 $("#overseas").css("display","none");
 		 	 			 $("#domestic").css("display","block");
 		 	 	 		 $("#domestic").find(".chart_list").parent().children().first().addClass("chart_listover").find(".chart_img").css("display","inline-block");
 			 	 		 $("#overseas").find(".chart_list").parent().children().first().removeClass("chart_listover").find(".chart_img").css("display","none");
 			 	 		
		 	 		}
		 	 	});

	 });
</script>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>