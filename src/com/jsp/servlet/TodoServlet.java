package com.jsp.servlet;

import com.jsp.model.Todo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "TodoServlet", urlPatterns = "/todos/add")
public class TodoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Todo> todos = (List<Todo>) request.getSession().getAttribute("todos");
        String todoContent = request.getParameter("todoContent");

        if (todos == null) {
            todos = new ArrayList<>();
            Todo todo = new Todo(todoContent, todos.size());
            todos.add(todo);
            request.getSession().setAttribute("todos", todos);
        } else {
            Todo todo = new Todo(todoContent, todos.size());
            todos.add(todo);
        }
        request.getSession().setAttribute("todos", todos);
        response.sendRedirect(request.getContextPath() + "/todos.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
