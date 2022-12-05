<%-- 
    Document   : delete-book
    Created on : 5 Ara 2022, 22:19:06
    Author     : Bahadır
--%>

%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID=Integer.parseInt(request.getParameter("ID"));
    BookService service=new BookService();
    service.Delete(ID);
    response.sendRedirect("books.jsp");
%>
