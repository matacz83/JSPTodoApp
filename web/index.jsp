<%--
  Created by IntelliJ IDEA.
  User: matacz
  Date: 21.07.2019
  Time: 09:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<% if (session.getAttribute("user") != null) {
    response.sendRedirect("todos.jsp");
}%>
<form action="login" method="post">
    Login: <input name="login" type="login"><br>
    Password: <input name="password" type="password"><br>
    <input type="submit" value="log in">
</form>
</body>
</html>
