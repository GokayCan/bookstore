<%-- 
    Document   : delete-category
    Created on : 3 Ara 2022, 23:36:59
    Author     : Bahadır
--%>

<%@page import="DataAccess.Entities.Category"%>
<%@page import="BusinessLayer.CategoryService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID=Integer.parseInt(request.getParameter("ID"));
    CategoryService service=new CategoryService();
    service.Delete(ID);
    response.sendRedirect("categories.jsp");
%>
