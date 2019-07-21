<%@ page import="com.jsp.model.Todo" %>
<%@ page import="java.util.List" %><%--
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
</form>
<%
    List<Todo> todos = (List<Todo>) request.getSession().getAttribute("todos");
    if (todos != null) {
        for (Todo todo : todos) {
%>
<%= todo.getContent() %>
<br/>
<%
        }
    }
%>
<form action="todos/add" method="post">
    Todo: <input type="text" name="todoContent">
    <input type="submit" value="Add">
</form>
</body>
</html>
