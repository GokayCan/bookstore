<%-- 
    Document   : login.jsp
    Created on : 5 Dec 2022, 22:53:32
    Author     : mavia
--%>

<%@page import="BusinessLayer.AdminService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h2>Admin Login</h2>
        <form method="post" action="#">
            KullanıcıAdı : <input type="text" name="username"/> <br>
            Şifre : <input type="text" name="password"/> <br>
            <input type="submit" name="login"/> <br>
        </form>
        <%
            if (request.getParameter("login") != null){
                AdminService service = new AdminService();
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                boolean result = service.IsAccountExist(username, password);
                
                if (result){
                    session.setAttribute("admin", "authorization");
                    response.sendRedirect("index.jsp");
                }
                else{%>
                    <script>alert("Hesap Doğru Değil");</script>
                <%}
            }
        %>
    </body>
</html>
