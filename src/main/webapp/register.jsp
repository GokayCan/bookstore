<%-- 
    Document   : register.jsp
    Created on : 31 Oct 2022, 19:48:28
    Author     : gokay
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Entities.User" %>
<%@page import="Db.Registration" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Page</title>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
        <script>
            function Validate(){
                var username = document.forms["my_form"]["username"].value;
                var password = document.forms["my_form"]["password"].value;
                var password_again = document.forms["my_form"]["password_again"].value;
                
                if(username == "" || password == "" || password_again == ""){
                    alert("Kullanıcı adı veya Şifre Boş!");
                    return false;
                }
                else if(password != password_again)
                {
                    alert("Şifreler Uyuşmuyor");
                    return false;
                }
                else{
                    return true;
                }
            }
        </script>
    </head>
    <body style="background-color: grey;">
        <h1>Register</h1>
        <div class="container">
            <form method="post" action="#" name="my_form" onsubmit="return Validate();">
                <label class="form-label">Kullanıcı Adı : </label><input type="text" name="username" class="form-control form-control-sm"><br>
                <label class="form-label">Şifre : </label><input type="password" name="password" class="form-control form-control-sm"><br>
                <label class="form-label">Tekrar Şifre : </label><input type="password" name="password_again" class="form-control form-control-sm"><br>
                <input type="submit" name="register" class="btn btn-info">
            </form>
            <%
                if (request.getParameter("register") != null){
                    
                    String username = request.getParameter("username");
                    String password = request.getParameter("password");
                    
                    session.setAttribute("username", username);
                    session.setAttribute("password", password);
                    Date date = Calendar.getInstance().getTime();
                    User usr = new User(username,password,date);
                    
                    Registration reg = new Registration();
                    boolean result = reg.AddUser(usr);
                    if (result){
                        response.sendRedirect("login.jsp");
                    }                    
                }
            %>
        </div>
    </body>
</html>
