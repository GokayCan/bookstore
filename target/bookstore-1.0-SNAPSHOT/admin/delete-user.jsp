<%-- 
    Document   : delete-user
    Created on : 7 Ara 2022, 21:58:15
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID=Integer.parseInt(request.getParameter("ID"));
    UserService service=new UserService();
    service.Delete(ID);
    response.sendRedirect("users.jsp");
%>
