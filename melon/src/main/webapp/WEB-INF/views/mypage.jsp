<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/template/header.jsp"%>
<div style="padding-top:100px;" align="center">
	<form action="${pageContext.request.contextPath}/member/edit" method="post">
		<table border="1px" >
			<thead>
				<th align="center" colspan="2">내정보</th>
			</thead>
			<c:forEach var="member_dto" items="${member_dto}">
			<tbody>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" value="${member_dto.name}" readonly></td>
				</tr>
				<tr>
					<th>이전 비밀번호</th>
					<td><input type="password" name="password" required placeholder="이전 비밀번호"></td>
				</tr>
				<tr>
					<th>새 비밀번호</th>
					<td><input type="password" name="new_password" required placeholder="새 비밀번호"></td>
				</tr>
				<tr>
					<th>생일</th>
					<td><input type="text" name="birth" required value="${member_dto.birth}"></td>
				</tr>
				<tr>
					<th>이메일</th>
					<td><input type="text" name="email;" placeholder="이메일" value="${member_dto.email}"></td>
				</tr>
				<tr>
					<th>핸드폰 번호</th>
					<td><input type="text" name="phone;" placeholder="'-'제외" value="${member_dto.phone}"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="수정"></td>
				</tr>
			</tbody>
			</c:forEach>
		</table>
	</form>
</div>
<%@ include file="/WEB-INF/views/template/footer.jsp"%>