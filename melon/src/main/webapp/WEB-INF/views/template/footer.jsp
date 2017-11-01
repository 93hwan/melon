<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- 음악 플레이어 -->

	
<!-- Footer -->
<footer class="w3-center w3-black w3-padding-64">
	<a href="#home" class="w3-button w3-light-grey"><i
		class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
	<p>
		Powered by <a href="https://www.w3schools.com/w3css/default.asp"
			title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a>
	</p>
</footer>

<!-- 네이버 로그인 js -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8">
</script>
<script src="${pageContext.request.contextPath}/js/layer_popup.js"></script>
<script>

<!-- 네이버아이디로로그인 버튼 노출 영역 -->
/* <div id="naver_id_login"></div> */

<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naver_id_login = new naver_id_login("등록한 ClientID 값", "등록한 Callback URL 값");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("white", 2,40);
	naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();
</script>


<!--  하단 고정바 -->
<div class="w3-bottom">
	<div class="w3-bar w3-white bottom-shadow">

	</div>
</div>

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
</script>


</body>
</html>