<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
	<a href="#home" class="w3-button w3-light-grey"><i
		class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
	<p>
		Powered by <a href="https://www.w3schools.com/w3css/default.asp"
			title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a>
	</p>
</footer>

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="js/layer_popup.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.11.3.min.js"></script>


<!--  하단 고정바 -->
<div class="w3-bottom">
	<div class="w3-bar w3-white bottom-shadow">

	<!-- jplayer 오디오 -->
	

	</div>
</div>

<%@ include file="/WEB-INF/views/popup/layerpop.jsp"%>

<!-- Add Google Maps -->
<script>
	// Modal Image Gallery
	function onClick(element) {
		document.getElementById("img01").src = element.src;
		document.getElementById("modal01").style.display = "block";
		var captionText = document.getElementById("caption");
		captionText.innerHTML = element.alt;
	}

	// Toggle between showing and hiding the sidebar when clicking the menu icon
	var mySidebar = document.getElementById("mySidebar");

	function w3_open() {
		if (mySidebar.style.display === 'block') {
			mySidebar.style.display = 'none';
		} else {
			mySidebar.style.display = 'block';
		}
	}

	// Close the sidebar with the close button
	function w3_close() {
		mySidebar.style.display = "none";
	}
	
	<!-- 네이버아디디로로그인 초기화 Script -->
	var naver_id_login = new naver_id_login("l70Zz3DfzAG0wOjEVYPV", "http://localhost:8080/melon/");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("green", 3,40);
	naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
	
	<!-- 네이버아디디로로그인 Callback페이지 처리 Script -->
	// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	function naverSignInCallback() {
		// naver_id_login.getProfileData('프로필항목명');
		// 프로필 항목은 개발가이드를 참고하시기 바랍니다.
// 		alert(naver_id_login.getProfileData('email'));
// 		alert(naver_id_login.getProfileData('nickname'));
// 		alert(naver_id_login.getProfileData('age'));
		window.close();
		$.ajax({
			type : "GET",
			url : "/melon/",
			data : naver_id_login.getAccessToken(),
			success : function(data) {
				alert("data = " + data)
				}
		});
	}

	// 네이버 사용자 프로필 조회
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
	console.log("접근토큰 = "+naver_id_login.getAccessToken());
</script>


</body>
</html>