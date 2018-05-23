<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");%>
<%	response.setContentType("text/html; charset=UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*,java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>freetableList</title>


</head>

<body>


	
<div class="content">
	<h1 style="margin-left:3%;">자유게시판</h1>
	
	<c:if test="${empty login.id }">
	  <div id="loginAlert">
	  	게시판을 보기 위해서는 <a id="doLogin" href="loginPage.jsp">로그인</a>이 필요합니다
		<br><br><br><br>
	  </div>
	</c:if>
	
	<c:if test="${login.id != null}">

<div align="center" id="selectAllLista">
	<table>
		<col width="50">
		<col width="100">
		<col width="350">
		<col width="100">
		<col width="70">
		

		<tr id="titleth">
			<th align="center">No.</th>
			<th>작성자</th>
			<th>제 목</th>
			<th>날 짜</th>
			<th>조회수</th>
		</tr>

		<c:choose>
			<c:when test="${empty allList}">
				<tr>
					<td colspan="9" align="center">─────── 작성된 글이 존재하지 않습니다. ───────</td>
				</tr>
			</c:when>

			<c:otherwise>
				<c:forEach items="${allList}" var="dto">
					<c:choose>
						<c:when test="${dto.delFlag eq 'Y'}">
							<tr>
								<td colspan="9" align="center">─────── 삭제된 글입니다. ───────</td>
							</tr>
						</c:when>

						<c:otherwise>
							<tr>
								<td align="center">${dto.boardNo }</td>
								<td align="center">${dto.id }</td>
								<td>
									<!-- 타이틀탭 수에 따라 앞부분 공백주기 --> <c:forEach begin="1" end="${dto.titleTab }">
								&nbsp;&nbsp;
								</c:forEach> 
									<a href="freetable.do?command=freetableDetail&boardNo=${dto.boardNo}">${dto.title}</a>
								</td>
								<td align="center">${dto.regDate }</td>
								<td align="center">${dto.readCount }</td>
							</tr>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:otherwise>
		</c:choose>
<tr></tr><tr></tr>
		<tr>
			<td colspan="4" align="center"><c:choose>
					<c:when test="${nowPage eq 1 }">◀</c:when>
					<c:otherwise>
						<a href="freetable.do?command=board&nowPage=${nowPage-1 }">◀</a>
					</c:otherwise>
				</c:choose> <c:forEach begin="${startPage }" end="${endPage }" var="i">
					<a href="freetable.do?command=board&nowPage=${i }">${i}</a>&nbsp;
				</c:forEach> <c:choose>
					<c:when test="${nowPage eq countPage }">▶</c:when>
					<c:otherwise>
						<a href="freetable.do?command=board&nowPage=${nowPage+1} ">▶</a>
					</c:otherwise>
				</c:choose></td>
			<td colspan="1" align="center">
			<input type="button" class="bttn-simple bttn-xs bttn-danger" value="글쓰기"
				onclick="location.href='freetable.do?command=freetableWriteForm'">
			</td>
		</tr>
	</table>
	</div>
	</c:if>
	
</div>
</div>





</body>
	
</html>