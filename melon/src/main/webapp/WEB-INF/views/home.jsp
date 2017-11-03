<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<html>
<head>
	<title>Home</title>
</head>
<body>
<!-- 네이버아이디로로그인 버튼 노출 영역 -->
<div id="naver_id_login"></div>

<h1>
	Hello world!
</h1>
	<a href="hi">hi</a>
	<!-- 네이버 로그인 js -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8">
</script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	
<script>
<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naver_id_login = new naver_id_login("l70Zz3DfzAG0wOjEVYPV", "http://192.168.0.2:8080/melon/home");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("green", 3,40);
	naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
</script>
<script type="text/javascript">
	// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	function naverSignInCallback() {
		// naver_id_login.getProfileData('프로필항목명');
		// 프로필 항목은 개발가이드를 참고하시기 바랍니다.
		alert(naver_id_login.getProfileData('email'));
		alert(naver_id_login.getProfileData('nickname'));
		alert(naver_id_login.getProfileData('age'));
	}

	// 네이버 사용자 프로필 조회
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
</script>
</body>
</html>

<%@ include file="/WEB-INF/views/template/footer.jsp"%>