<%--
  Created by IntelliJ IDEA.
  User: matacz
  Date: 21.07.2019
  Time: 09:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Your todos</title>
</head>
<body>
<h1>Hello, ${sessionScope.user.login}!</h1>
<h1>Your todos: </h1>
<form action="logout">
    <input type="submit" value="log out">
</body>
</html>
