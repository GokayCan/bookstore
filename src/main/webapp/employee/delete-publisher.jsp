<%-- 
    Document   : delete-publisher
    Created on : 3 Ara 2022, 23:38:31
    Author     : Bahadır
--%>

<%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID=Integer.parseInt(request.getParameter("ID"));
    PublisherService service=new PublisherService();
    service.Delete(ID);
    response.sendRedirect("publishers.jsp");
%>


