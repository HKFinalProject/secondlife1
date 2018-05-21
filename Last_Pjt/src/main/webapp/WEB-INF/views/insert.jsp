<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <% request.setCharacterEncoding("UTF-8"); %>
    <% response.setContentType("text/html; charset=UTF-8"); %>
    
<!DOCTYPE html>
<html>
<head>
<style type="text/css">

a { text-decoration:none }

</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>insert.jsp</title>
</head>
<body>
<h3>공지사항 작성</h3>

	<div class="container">
   <form action="insert.do" method="post">
				<label>ID</label>
				<p><input type="text" name="member_id" placeholder="ID를 입력하세요."></p>
				
				<label>PASSWORD</label>
				<p><input type="text" name="member_pw" placeholder="비밀번호를 입력하세요."></p>
				
				<label>이름</label>
				<p><input type="text" name="member_name" placeholder="이름을 입력하세요."></p>
				
				<label>email</label>
				<p><input type="text" name="member_email" placeholder="email 입력하세요."></p>
				
				<label>전화번호</label>
				<p><input type="text" name="member_phone" placeholder="전화번호를 입력하세요."></p>
				
				<label>가입여부</label>
				<p><input type="text" name="member_enabled" placeholder="가입여부를 입력하세요.(-)"></p>
				
				<label>등급</label>
				<p><input type="text" name="member_role" placeholder="등급을 입력하세요."></p>
				 <button type="submit" class="btn btn-primary">작성</button>
	</form> 
	</div>
<%@ include file="bootstrap.jsp" %>
</body>
</html>