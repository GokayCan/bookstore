<%-- 
    Document   : book-list
    Created on : 12 Ara 2022, 10:21:32
    Author     : Bahadır
--%>

<%@page import="DataAccess.Entities.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    BookService bookService=new BookService();
    ArrayList<Book> books=new ArrayList<Book>();
    books=bookService.List();

    for(int i=0;i<books.size();i++){

%>

<div class="card mb-4">
    <a href="#!"><img class="card-img-top" src="../assets/<%=books.get(i).getImageUrl()%>" style="height: 400px;" alt="..." /></a>
    <div class="card-body">
        <h2 class="card-title"><%=books.get(i).getName()%></h2>
        <p class="card-text"><%=books.get(i).getSubject()%></p>
        <a class="btn btn-primary" href="book-detail.jsp?ID=<%=books.get(i).getID()%>">Detay →</a>
    </div>
</div>

<%
    }

%>
