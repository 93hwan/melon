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

<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="js/layer_popup.js"></script>

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