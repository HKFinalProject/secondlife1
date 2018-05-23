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
	<div class="container">
	 <div class="col-md-9">
	    <input type="text" class="form-control" placeholder="제목이나 ID로 검색하세요.">
	     <div class="input-group-append">
        <button class="btn btn-primary" type="button">검색</button>
      </div>
      </div>
      
	<c:choose>
		<c:when test="${empty admin_list }">
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
					<c:forEach items="${admin_list }" var="admin_dto">
						<tr>
							<td>${admin_dto.member_id }</td>
							<td>${admin_dto.member_pw }</td>
							<td>${admin_dto.member_name }</td>
							<td>${admin_dto.member_email }</td>
							<td>${admin_dto.member_phone }</td>
							<td>${admin_dto.member_enabled }</td>
							<td>${admin_dto.member_role }</td>
							<td><a href="delete.do?member_id=${admin_dto.member_id }">[삭제]</a></td>
							<td><a href="detail.do?member_id=${admin_dto.member_id }">[수정]</a></td>
						</tr>
					</c:forEach>	
		</c:otherwise>
	</c:choose>			
					<tr>
						<td colspan="3">
							<button class="btn btn-primary" onclick="location.href='index.jsp'">메인</button>
							<button class="btn btn-primary" onclick="location.href='write.do'">공지사항 작성</button>
						</td>			
					</tr>
			</table>
			</div>
<%@ include file="bootstrap.jsp" %>
</body>
</html>