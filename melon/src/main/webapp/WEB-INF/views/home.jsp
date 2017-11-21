<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<html>
<head>
<title>Home</title>


<!-- 음악 플레이어 -->
<link
	href="${pageContext.request.contextPath}/css/jplayer.blue.monday.min.css"
	rel="stylesheet" type="text/css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery.jplayer.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jplayer.playlist.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/playlist.js"></script>


</head>
<body>

	<h1>Hello world!</h1>
	<a href="hi">hi</a>
	<a href="artist/main">artist page</a>
</body>
</html>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>