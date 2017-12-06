function wrapWindowByMask() {
	// 화면의 높이와 너비를 변수로 만듭니다.
	var maskHeight = $(document).height();
	var maskWidth = $(window).width();

	// 마스크의 높이와 너비를 화면의 높이와 너비 변수로 설정합니다.
	$('.mask').css({
		'width' : maskWidth,
		'height' : maskHeight
	});

	// fade 애니메이션 : 1초 동안 검게 됐다가 80%의 불투명으로 변합니다.
	$('.mask').fadeIn(1000);
	$('.mask').fadeTo("slow", 0.8);

	// 레이어 팝업을 가운데로 띄우기 위해 화면의 높이와 너비의 가운데 값과 스크롤 값을 더하여 변수로 만듭니다.
	var left = ($(window).scrollLeft() + ($(window).width() - $('.window')
			.width()) / 2);
	var top = ($(window).scrollTop() + $('.window').outerHeight() / 2) - 150;
	// css 스타일을 변경합니다.
	$('.window').css({
		'left' : left,
		'top' : top,
		'position' : 'absolute'
	});
}

$(document).ready(
		function() {
			// showMask를 클릭시 작동하며 검은 마스크 배경과 레이어 팝업을 띄웁니다.
			$('.loginbtn').click(function(e) {
				// preventDefault는 href의 링크 기본 행동을 막는 기능입니다.
				$("#login").show();
				$("#join").hide();
				e.preventDefault();
				wrapWindowByMask();
			});

			$('.joinbtn').click(function(e) {
				// preventDefault는 href의 링크 기본 행동을 막는 기능입니다.
				$("#login").hide();
				$("#join").show();
				e.preventDefault();
				wrapWindowByMask();
			});
			
			// 닫기(close)를 눌렀을 때 작동합니다.
			$('.window .close').click(function(e) {
				e.preventDefault();
				$('.mask, .window').hide();
			});
			//네이버 로그인 버튼을 눌렀을떄 작동
			$('#naver_id_login').click(function(e) {
				$('.mask, .window').hide();
			});
			
			// 아이디 중복 검사
			$("#member_id").on(
					"blur",
					function() {
						$.ajax({
							type : "POST",
							url : "/bee/member/check",
							data : {
								"member_id" : $("#member_id").val()
							},
							success : function(data) {
								console.log("data = "+data);
								if (data == "false") {
									alert("중복된 아이디 입니다!!")
									$("#member_id").addClass("cant");
								} else {
									$("#member_id").removeClass("cant");
								}
							}
						});
					});

			// 중복 아닐시 데이터 전송
			$("#a_join").on("submit", function() {
				event.preventDefault(); // submit 이벤트를 없애자

				if ($("#member_id").hasClass("cant")) {
					alert("잘못된 정보 입니다!");
				} else {
					$.ajax({
						type : "POST",
						url : "/bee/member/join",
						data : $("#a_join").serialize(),
						success : function(data) {
							alert("회원가입 완료")
							location.href = data;
						}
					});
				}
			});

			// 회원가입 팝업창 close 누를시 리셋
			$(".close").on("click", function() {
				$(".resource").val(null);
				$("#member_id").removeClass("cant");
			});
});