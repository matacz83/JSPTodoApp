package com.jsp.model;

public class Todo {
    private String content;
    private int ID;

    public Todo() {
    }

    public Todo(String content, int ID) {
        this.content = content;
        this.ID = ID;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }
}
