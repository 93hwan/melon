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
		<a href="${pageContext.request.contextPath}/artist/main/792022">ARTIST MAIN</a>
			<form action="${pageContext.request.contextPath}/artist/main/792022">
				<input type="submit" value="ARTIST">
			</form><br>
			
			<form action="${pageContext.request.contextPath}/album/album_main/10100191">
				<input type="submit" value="ALBUM">
			</form>
			<a href="${pageContext.request.contextPath}/chart/chart_recent">최신차트</a><br>
			
			<a href="${pageContext.request.contextPath}/album">데이터크롤링</a> <br>
		
		<div class="content3">

			
			<div class="w3-bar w3-black concert">
				<button class="w3-bar-item w3-button concert_btn gold"  value="new" id="gold" style="background-color: #333333">new 공연!</button>
				<button class="w3-bar-item w3-button concert_btn"  value="upcomming" id="gold" style="background-color: #333333">임박 공연!</button>
			</div>


			<div id="new" class="w3-container concert con_form"  >
				<ul>
					<li>
						<img src="http://cdnticket.melon.co.kr/resource/image/upload/product/2017/12/20171205095650785dd371-1352-4546-8bfc-a7b10d034e6f.jpg/melon/resize/180x250/strip/true" >
						<div class="con_artist">디자이너</div>
						<div class="con_move" >디자이너（Desiigner）첫 내한공연</div>
					</li>
					<li>
						<img src="http://cdnticket.melon.co.kr/resource/image/upload/product/2017/12/20171206181855ae4a9e4c-6c79-45ef-be83-d547ad0ef3c5.jpg/melon/resize/180x250/strip/true" >
						<div class="con_artist">케이윌</div>
						<div class="con_move" >2017 케이윌 전국투어</div>
					</li>
					<li>
						<img src="http://cdnticket.melon.co.kr/resource/image/upload/product/2017/11/201711201705581e713a25-e919-4910-b737-e5c3c049f00d.jpg/melon/resize/180x250/strip/true" >
						<div class="con_artist">신승훈</div>
						<div class="con_move" >2017 THE신승훈SHOW</div>
					</li>
					<li>
						<img src="http://cdnticket.melon.co.kr/resource/image/upload/product/2017/10/20171030171733b4b6624a-7e4c-4dcc-a5bf-aa5d7745436b.jpg/melon/resize/180x250/strip/true" >
						<div class="con_artist">어반자카파</div>
						<div class="con_move" >2017 어반자카파 전국투어</div>
					</li>
				</ul>
			</div>

			<div id="upcomming" class="w3-container concert con_form"  style="display: none">
				<ul>
					<li>
						<img src="http://cdnticket.melon.co.kr/resource/image/upload/product/2017/11/20171110122524179aa360-e1e6-4519-9942-559dbb3efea1.jpg/melon/resize/180x250/strip/true">
						<div class="con_artist">박효신</div>
						<div class="con_move" >Park HyoShin x Milla Ariwan</div>
					</li>
					<li>
						<img src="http://cdnticket.melon.co.kr/resource/image/upload/product/2017/11/2017112115452862f8f2d0-2464-4f09-be46-ef2de3fbfbcf.jpg/melon/resize/180x250/strip/true">
						<div class="con_artist">10cm</div>
						<div class="con_move" >10CM 콘서트［1＋2＋3＋4］</div>
					</li>
					<li>
						<img src="http://cdnticket.melon.co.kr/resource/image/upload/product/2017/12/20171205093718409c8d97-562a-48b8-8e6f-44ae9c40940c.jpg/melon/resize/180x250/strip/true">
						<div class="con_artist">여자친구</div>
						<div class="con_move" >여자친구 FIRST CONCERT＇Season of GFRIEND＇</div>
					</li>
					<li>
						<img src="http://cdnticket.melon.co.kr/resource/image/upload/product/2017/11/201711271139051499c0d9-23b8-4a4f-a75c-3dc6d4f0fb3a.jpg/melon/resize/180x250/strip/true">
						<div class="con_artist">박원</div>
						<div class="con_move" >박원 콘서트</div>
					</li>
				</ul>
			</div>
<!-- 			<iframe width="360" height="202" src="https://www.youtube.com/embed/PLb_YYOPPBI" frameborder="0"></iframe> -->
			

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
		 	 	
		 	 <%-- 공연버튼 --%>
		 	 $(".concert_btn").on("click",function(){
		 		 $(".concert_btn").removeClass("gold");
		 		 $(this).addClass("gold");
		 		 if($(this).val()=="new"){
		 			 $("#upcomming").css("display","none");
		 			 $("#new").css("display","block");
		 		 }else{
		 			 $("#new").css("display","none");
		 			 $("#upcomming").css("display","block");
		 		 }
		 	 });
		 	 	

	 });
</script>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>