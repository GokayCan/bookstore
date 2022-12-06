<%-- 
    Document   : delete-translator
    Created on : 3 Ara 2022, 23:40:42
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID=Integer.parseInt(request.getParameter("ID"));
    TranslatorService service=new TranslatorService();
    service.Delete(ID);
    response.sendRedirect("translators.jsp");
%>
