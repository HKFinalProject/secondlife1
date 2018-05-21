<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>list.jsp</title>
</head>
<body>
	<h3>회원 목록</h3>
	<c:choose>
		<c:when test="${empty list }">
			<h3>******회원정보가 없습니다.*******</h3>
		</c:when>
		<c:otherwise>
			<table class="table table-hover">
					<tr>
						<th>ID</th>
						<th>PASSWORD</th>
						<th>이름</th>
						<th>EMAIL</th>
						<th>PHONE</th>
						<th>가입여부</th>
						<th>등급</th>
						<th>삭제여부</th>
					</tr>
					<c:forEach items="${list }" var="dto">
						<tr>
							<td>${dto.member_id }</td>
							<td>${dto.member_pw }</td>
							<td>${dto.member_name }</td>
							<td>${dto.member_email }</td>
							<td>${dto.member_phone }</td>
							<td>${dto.member_enabled }</td>
							<td>${dto.member_role }</td>
							<td><a href="delete.do?member_id=${dto.member_id }">[삭제]</a></td>
							<td><a href="detail.do?member_id=${dto.member_id }">[수정]</a></td>
						</tr>
					</c:forEach>	
		</c:otherwise>
	</c:choose>			
					<tr>
						<td colspan="3">
							<button class="btn btn-primary" onclick="location.href='index.jsp'">메인</button>
							<button class="btn btn-primary" onclick="location.href='write.do'">회원 추가(test)</button>
						</td>			
					</tr>
			</table>
<%@ include file="bootstrap.jsp" %>
</body>
</html>