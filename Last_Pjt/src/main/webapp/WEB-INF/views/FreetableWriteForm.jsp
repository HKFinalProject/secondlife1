<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");%>
<%	response.setContentType("text/html; charset=UTF-8");%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>freetableWriteForm</title>

</head>
<body>

	<h1>글쓰기</h1>
<div class="content">
	<form action="writeForm.do">
		


		<table id="table" border="1" >
			<col width="100">
			<col width="670">

			<tr>
				<th>작성자</th>
				<td><input type="text" style='border:none' name="id" value="${login.id }" readonly="readonly"></td>
			</tr>

			<tr>
				<th>제목</th>
				<td><input type="text" name="title"></td>
			</tr>

			<tr>
				<th>내용</th>
				<td><textarea rows="10" cols="100" name="content"></textarea></td>
			</tr>

			<tr>
				<td colspan="2" align="right">
					<input type="submit" class="bttn-jelly bttn-xs bttn-danger" value="작성완료">
					<input type="button" value="취소" class="bttn-jelly bttn-xs bttn-danger"
					onclick="location.href='list.do'"></td>
			</tr>
		</table>
	</form>
	</div>
	</div>
	

</body>
</html>