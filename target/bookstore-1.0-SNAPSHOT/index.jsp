<%-- 
    Document   : index
    Created on : 31 Oct 2022, 19:31:19
    Author     : gokay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Db.DbConnector" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            DbConnector cls = new DbConnector();
            cls.Connect();
        %>
    </body>
</html>
