<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8");%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>댓글에 답글달기</title>


</head>
<body>
	

	<h1 style="margin-left: 25%;">댓글에 답글달기</h1>
	<form action="freetable.do">
	<input type="hidden" name="command" value="commReInsert">
	<input type="hidden" name="boardNo" value="${commRe.boardNo}">
	<input type="hidden" name="seq" value="${commRe.seq }">
	<input type="hidden" name="id" value="${commRe.id }">
	<input type="hidden" name="cGroupNo" value="${commRe.cGroupNo}">
	<input type="hidden" name="cStep" value="${commRe.cStep}">
		<table align="center">
			<tr>
				<th id="titleth">작성자</th>
				<td style="border:1px gray solid;">${commRe.id}</td>
			</tr>
			<tr>
				<th id="titleth">내용</th>
				<td ><textarea rows="10" cols="60" name="cContent"></textarea></td>
			</tr>
			<tr>
				<td colspan="2" align="right"><input type="submit"  class="bttn-simple bttn-xs bttn-danger" value="답글달기"> 
				<input	type="button" class="bttn-simple bttn-xs bttn-danger" value="취소" 
				onclick="location.href='freetable.do?command=freetableDetail&boardNo=${commRe.boardNo}'"></td>
			</tr>
		</table>

	</form>



</body>
</html>