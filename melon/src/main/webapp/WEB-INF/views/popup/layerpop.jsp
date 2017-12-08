<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div class="mask"></div>
<div id="popup_area">
	<div class="window" style="display: none;" id="login">
		<img src="${pageContext.request.contextPath}/img/ico_close.png"
			class="close">
		<div class="empty"></div>
		<div class="area-60  layer-center">
			<form action="${pageContext.request.contextPath}/loginProc"
				method="post">
				<sec:csrfInput />
				<div>
					<input type="text" name="member_id" placeholder="ID"
						class="w3-input" required>
				</div>
				<div>
					<input type="password" name="password" placeholder="Password"
						class="w3-input" required>
				</div>
				<div class="remember">
					<input type="checkbox" id="remember" class="user-check"> <label
						for="remember"> <span></span> 아이디 기억하기
					</label>
				</div>
				<div class="w3-center">
					<input type="submit" value="로그인" class="input-btn area-80">
				</div>
				<!-- 네이버아이디로로그인 버튼 노출 영역 -->
				<div class="w3-center" id="naver_id_login" style="margin-top: 5px"></div>
				<div>
					<hr>
					<a href="">비밀번호가 생각나지 않으세요?</a>
				</div>
				<div>
					<hr>
					<label>계정이 없으세요?</label>
					<button
						class="joinbtn w3-button w3-white w3-border w3-border-blue w3-round-large w3-right">회원가입</button>
				</div>
			</form>
		</div>
	</div>
	<div class="window" style="display: none;" id="join">
		<img src="${pageContext.request.contextPath}/img/ico_close.png"
			class="close">
		<div class="empty"></div>
		<div class="area-60  layer-center">
			<!-- 회원가입 폼 -->
			<form id="a_join"
				action="${pageContext.request.contextPath}/member/join"
				method="post">
				<sec:csrfInput />
				<div>
					<input type="text" id="member_id" name="member_id" placeholder="id"
						class="w3-input resource" required>
				</div>
				<div>
					<input type="password" name="password" placeholder="Password"
						class="w3-input resource" required>
				</div>
				<div>
					<input type="text" name="name" placeholder="이름"
						class="w3-input resource" required>
				</div>
				<div>
					<input type="date" name="birth"
						class="w3-input resource" required>
				</div>
				<div>
					<input type="email" name="email" placeholder="Email"
						class="w3-input resource" required>
				</div>
				<div>
					<input type="tel" name="phone"
						placeholder="연락처&nbsp&nbsp'&nbsp-&nbsp' &nbsp제외"
						class="w3-input resource" required>
				</div>
				<br> <br>
				<div>
					<input type="submit" value="회원가입" class="input-btn area-80">
				</div>

				<div>&nbsp;</div>
				<div>
					<hr>
					<label>계정이 있나요?</label>
					<button
						class="loginbtn w3-button w3-white w3-border w3-border-blue w3-round-large w3-right">로그인</button>
				</div>
			</form>
		</div>
	</div>
	
