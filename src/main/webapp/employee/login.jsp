<%-- 
    Document   : login.jsp
    Created on : 5 Dec 2022, 22:53:32
    Author     : mavia
--%>

<%@page import="BusinessLayer.EmployeeService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Employee Login</h2>
        <form method="post" action="#">
            Kimlik Numarası : <input type="text" name="tc"/> <br>
            Şifre : <input type="text" name="password"/> <br>
            <input type="submit" name="login"/> <br>
        </form>
        <%
            if (request.getParameter("login") != null){
                EmployeeService service = new EmployeeService();
                String tc = request.getParameter("tc");
                String password = request.getParameter("password");
                boolean result = service.IsAccountExist(tc, password);
                
                if (result){
                    session.setAttribute("employee", "authorization");
                    response.sendRedirect("index.jsp");
                }
                else{%>
                    <script>alert("Hesap Doğru Değil");</script>
                <%}
            }
        %>
    </body>
</html>
