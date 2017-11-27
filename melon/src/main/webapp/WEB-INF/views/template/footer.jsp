<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- Footer -->
<footer class="w3-center f-gray w3-padding-32">
	<a href="${pageContext.request.contextPath}" class="w3-button w3-light-grey"><i
		class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
	<p>
		Powered by <a href="https://www.w3schools.com/w3css/default.asp"
			title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a>
	</p>
</footer>



<!--  하단 고정바 -->

<div class="w3-bottom">
	<div class="w3-bar w3-white bottom-shadow">

		<div class="show"></div>
		<div class="jp-playlist">
			<ul>
				<li>&nbsp;</li>
			</ul>
		</div>


		<div class="w3-bar w3-white bottom-shadow" id="player">


			<div id="jquery_jplayer_1" class="jp-jplayer"></div>
			<div id="jp_container_1" class="jp-audio" role="application"
				aria-label="media player">
				<div class="jp-type-playlist">
					<div class="jp-gui jp-interface">
						<div class="jp-controls">
							<button class="jp-previous" role="button" tabindex="0">previous</button>
							<button class="jp-play" role="button" tabindex="0">play</button>
							<button class="jp-next" role="button" tabindex="0">next</button>
							<button class="jp-stop" role="button" tabindex="0">stop</button>
						</div>
						<div class="jp-progress">
							<div class="jp-seek-bar">
								<div class="jp-play-bar"></div>
							</div>
						</div>
						<div class="jp-volume-controls">
							<button class="jp-mute" role="button" tabindex="0">mute</button>
							<button class="jp-volume-max" role="button" tabindex="0">max
								volume</button>
							<div class="jp-volume-bar">
								<div class="jp-volume-bar-value"></div>
							</div>
						</div>
						<div class="jp-time-holder">
							<div class="jp-current-time" role="timer" aria-label="time">&nbsp;</div>
							<div class="jp-duration" role="timer" aria-label="duration">&nbsp;</div>
						</div>
						<div class="jp-toggles">
							<button class="jp-repeat" role="button" tabindex="0">repeat</button>
							<button class="jp-shuffle" role="button" tabindex="0">shuffle</button>
						</div>
					</div>

					<div class="jp-no-solution">
						<span>Update Required</span> To play the media you will need to
						either update your browser to a recent version or update your <a
							href="http://get.adobe.com/flashplayer/" target="_blank">Flash
							plugin</a>.
					</div>
				</div>
			</div>
			<div class="b_outside">
				<div class="b_inside">

					<img class="ala"
						src="${pageContext.request.contextPath}/img/list_button.jpg"
						height="25" width="25">
				</div>


			</div>


		</div>
	</div>
</div>

<%@ include file="/WEB-INF/views/popup/layerpop.jsp"%>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="${pageContext.request.contextPath}/js/layer_popup.js"></script>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

Add Google Maps
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

	//네이버아디디로로그인 초기화 Script
	var naver_id_login = new naver_id_login("l70Zz3DfzAG0wOjEVYPV",
			"http://localhost:8080/melon/");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("green", 3, 40);
	naver_id_login.setDomain(".service.com");
	naver_id_login.setState(state);
	naver_id_login.setPopup();
	naver_id_login.init_naver_id_login();

	//네이버아디디로로그인 Callback페이지 처리 Script
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
	console.log("접근토큰 = " + naver_id_login.getAccessToken());
</script>


</body>
</html>