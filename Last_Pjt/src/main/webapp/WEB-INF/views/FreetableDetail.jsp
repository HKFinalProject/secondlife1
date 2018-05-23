<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("UTF-8");%>
<%	response.setContentType("text/html; charset=UTF-8");%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	function freetableDetail() {
		$("#UpdateForm").hide();
		$("#ReplyForm").hide();
		$("#DetailForm").show();
	}

	function freetableUpdate() {
		$("#DetailForm").hide();
		$("#UpdateForm").show();
	}

	function freetableReply() {
		$("#DetailForm").hide();
		$("#ReplyForm").show();

	}
</script>




<title>freetableDetail</title>
</head>
<body>



	<div class="content">
		<div id="DetailForm">
			<h1 style="margin-left: 25%;">상세글 보기</h1>
			<form action="freetable.do" method="post">
				<input type="hidden" name="command" value="freetableDelete">
				<input type="hidden" name="freetable_no" value="${detail.freetable_no }">

				<table id="table1" align="center">
					<col width="100">
					<col width="670">
					<tr>
						<th id="titleth">작성자</th>
						<td style="border: 1px gray solid;">${detail.freetable_id }</td>
					</tr>

					<tr>
						<th id="titleth">제목</th>
						<td style="border: 1px gray solid;">${detail.freetable_title }</td>
					</tr>

					<tr>
						<th id="titleth">내용</th>
						<td><textarea rows="10" cols="100" readonly="readonly">${detail.freetable_content }</textarea></td>
					</tr>

					<tr>
						<td colspan="2" align="right">
						<input type="button" class="bttn-jelly bttn-xs bttn-danger" value="답글"	onclick="freetableReply();"> 
						<input type="button" class="bttn-jelly bttn-xs bttn-danger" value="목록"
							onclick="location.href='list.do'">
							<c:if test="${login.member_id ==detail.freetable_id}">
								<input type="button" class="bttn-jelly bttn-xs bttn-danger"
									value="수정" onclick="freetableUpdate();">
								<input type="submit" class="bttn-jelly bttn-xs bttn-danger"
									value="삭제">
							</c:if> <c:if test="${login.member_role eq'ADMIN' }">
								<input type="submit" class="bttn-jelly bttn-xs bttn-danger"
									value="삭제">
							</c:if></td>
					</tr>
				</table>

			</form>

			<br> <br>


			<table align="center">
				<col width="100">
				<col width="250">
				<col width="200">
				<tr id="titleth">
					<th>작성자</th>
					<th>내용</th>
					<th>작성일</th>
				</tr>
				<c:choose>
					<c:when test="${empty list }">
						<tr>
							<td colspan="4">-----댓글이 없습니다----</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list }" var="list">
							<tr>
								<td align="center">${list.freecomm_id }</td>
								<td align="center"><c:forEach begin="1"
										end="${list.freecomm_titleTab }">
								 RE:
						</c:forEach> 
						     <a href="commRe.do?freetable_no=${list.freetable_no}
									&freecomm_id=${list.freecomm_id}&freecomm_no=${list.freecomm_no}
									&freecomm_groupNo=${list.freecomm_groupNo}&freecomm_step=${list.freecomm_step}">${list.freecomm_content}</a></td>
								<td align="center">${list.freecomm_regDate }</td>
							</tr>

						</c:forEach>

					</c:otherwise>

				</c:choose>





			</table>

			<form action="freetable.do">
				<input type="hidden" name="command" value="commInsert"> 
				<input type="hidden" name="freetable_no" value="${detail.freetable_no}"> 
				<input type="hidden" name="member_id" value="${login.member_id }">
				<table align="center">

					<br>
					<tr>
						<th>댓글</th>
						<td colspan="3"><input type="text" name="freecomm_content"> 
						<input type="submit" class="bttn-jelly bttn-xs bttn-danger" value="댓글">
						</td>
					</tr>

				</table>
			</form>

		</div>






		<div id="UpdateForm">
			<h1 style="margin-left: 25%;">글 수정</h1>

			<form action="freetable.do" method="post">
				<input type="hidden" name="command" value="freetableUpdate">
				<input type="hidden" name="freetable_no" value="${detail.freetable_no}">

				<table align="center">
					<col width="100">
					<col width="670">

					<tr>
						<th id="titleth">작성자</th>
						<td style="border: none">${detail.freetable_id }</td>
					</tr>

					<tr>
						<th id="titleth">제목</th>
						<td style="border: 1px gray solid;">
						<input type="text"	name="title" value="${detail.freetable_title }">
						</td>
					</tr>

					<tr>
						<th id="titleth">내용</th>
						<td><textarea rows="10" cols="100" name="content">${detail.freetable_content }</textarea></td>
					</tr>

					<tr>
						<td colspan="2" align="right">
						<input type="submit" class="bttn-jelly bttn-xs bttn-danger" value="수정완료"> 
						<input type="button" class="bttn-jelly bttn-xs bttn-danger" value="취소"
							onclick="freetableDetail();" /></td>
					</tr>
				</table>
			</form>
		</div>





		<div id="ReplyForm">
			<h1 style="margin-left: 25%;">답글 달기</h1>

			<form action="freetable.do" method="post">
				<input type="hidden" name="command" value="insertReply"> 
				<input type="hidden" name="freetable_no" value="${detail.freetable_no }">
				<table align="center">
					<col width="100">
					<col width="670">

					<tr>
						<th id="titleth">작성자</th>
						<td style="border: 1px gray solid;"><input
							style='border: none' type="text" readonly="readonly" name="id"
							value="${login.member_id }"></td>
					</tr>

					<tr>
						<th id="titleth">제목</th>
						<td style="border: 1px gray solid;"><input type="text"
							name="title" value="RE:${detail.freetable_title}"></td>
					</tr>

					<tr>
						<th id="titleth">내용</th>
						<td><textarea rows="10" cols="100" name="content"> ${detail.freetable_content }</textarea></td>
					</tr>

					<tr>
						<td colspan="2" align="right">
						<input type="submit" class="bttn-jelly bttn-xs bttn-danger" value="답글"> 
						<input type="button" class="bttn-jelly bttn-xs bttn-danger" value="취소"
							onclick="freetableDetail()" /></td>
					</tr>

				</table>
			</form>
		</div>
	 </div>
	</div>


	
</body>
</html>