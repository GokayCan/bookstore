<%-- 
    Document   : delete-author
    Created on : 3 Ara 2022, 23:38:21
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID=Integer.parseInt(request.getParameter("ID"));
    AuthorService service=new AuthorService();
    service.Delete(ID);
    response.sendRedirect("authors.jsp");
%>
