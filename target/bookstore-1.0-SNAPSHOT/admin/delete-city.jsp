<%-- 
    Document   : delete-city
    Created on : 3 Ara 2022, 20:55:11
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID=Integer.parseInt(request.getParameter("ID"));
    CityService service=new CityService();
    service.Delete(ID);
    response.sendRedirect("cities.jsp");
%>
