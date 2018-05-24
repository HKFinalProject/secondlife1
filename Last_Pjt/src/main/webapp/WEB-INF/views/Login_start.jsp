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

function registForm() {
	location.href='loginController.jsp?command=registForm'
}

</script>

</head>
<body>

  <form action="loginController.jsp" method="post">
      <input type="hidden" name="command" value = "login">
      <table border="1">
          <col width="100">
          <col width="100">
          <tr>
             <th>아이디 : </th>
             <td><input type = "text" name = "id"></td>
          </tr>
          <tr>
             <th>패스워드 : </th>
             <td><input type="password" name = "pw"></td>
          </tr>
          <tr>
             <td colspan = "2">
                <input type="button" value = "회원가입" onclick="registForm();">
                <input type="submit" value = "로그인">
             </td>
          </tr>
      </table>
  </form>



</body>
</html>