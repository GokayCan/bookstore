<%-- 
    Document   : register
    Created on : 15 Dec 2022, 11:28:16
    Author     : gokay
--%>

<%@page import="DataAccess.Entities.User"%>
<%@page import="BusinessLayer.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
            //Formdan Alınacak Veriler
            //FirstName
            //LastName
            //Email
            //Password
            //PhoneNumber
            //Address
            //Şehir
            //Doğum Tarihi
            //Fotoğraf
        <% 
            UserService service = new UserService();
            boolean result = service.EmailExist("");
            if (result){
                User user = new User();
                //user değerlerini ata
                service.Add(user);
                response.sendRedirect("index.jsp");
            }
            else{%>
                 <script>alert("Girilen Mail İçin Hesap Mevcut");<script/>
            <%}%>
        %>
    </body>
</html>
