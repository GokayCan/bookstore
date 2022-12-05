<%-- 
    Document   : delete-employee
    Created on : 5 Ara 2022, 22:13:31
    Author     : Bahadır
--%>

%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    int ID=Integer.parseInt(request.getParameter("ID"));
    EmployeeService service=new EmployeeService();
    service.Delete(ID);
    response.sendRedirect("employees.jsp");
%>
