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
    	<div class="form-group">
		<label for="noticeboard_title">제목</label>
        <input type="text" class="form-control" id="noticeboard_title" name="noticeboard_title" placeholder="제목을 입력하세요.">
      </div>
      <div class="form-group">
        <label for="noticeboard_writer">작성자</label>
        <%-- <input type="hidden" name="member_name" value="${admin_dto.member_name }"> --%>
        <input type="text" class="form-control" id="noticeboard_writer" name="noticeboard_writer" placeholder="이름을 입력하세요.">
      </div>
      <div class="form-group">
        <label for="noticeboard_content">내용</label>
        <textarea class="form-control" id="noticeboard_content" name="noticeboard_content" rows="3" placeholder="내용을 입력하세요."></textarea>
      </div>
      <button type="submit" class="btn btn-primary">작성</button>
    </form>
</div>

<%@ include file="bootstrap.jsp" %>
</body>
</html>