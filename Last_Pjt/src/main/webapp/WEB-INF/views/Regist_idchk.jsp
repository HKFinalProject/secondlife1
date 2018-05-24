<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<% response.setContentType("text/html; charset=UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	onload = function() {
		var id = opener.document.getElementsByName("id")[0].value;
		document.getElementsByName("id")[0].value = id;
	}
	function confirm(bool) {
		//만일 bool이 true라면
		if (bool == "true") {
			
			//opener의 name=pw에 focus를 맞춰주고
			opener.document.getElementsByName("pw")[0].focus();
			
			//opener의 name=id의 title을  y로 바꿔준다
			opener.document.getElementsByName("id")[0].title = "y";
			
			//bool이  true가 아니라면
		} else {
			
			//opener의 name=id에 focus를 맞춰준다.
			opener.document.getElementsByName("pw")[0].focus();

		}
		//스스로 창을 종료한다
		self.close();

	}
</script>



</head>
<%
String idNotUsed = request.getParameter("idNotUsed");
%>

<body>

  <table border="1">
      <tr>
         <td><input type = "text" name = "id"></td>
      </tr>
      <tr>
         <td><%=idNotUsed.equals("true")?"아이디 생성가능":"중복된 아이디 존재" %></td>
      </tr>
      <tr>
         <td>
            <input type="button" value="확인" onclick="confirm('<%=idNotUsed%>');"> 
         </td>
      </tr>
  </table>


</body>
</html>