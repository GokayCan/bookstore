<%-- 
    Document   : login.jsp
    Created on : 5 Dec 2022, 22:53:32
    Author     : mavia
--%>

<%@page import="DataAccess.Entities.Employee"%>
<%@page import="BusinessLayer.EmployeeService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <style>
            body {
                margin: 0;
                padding: 0;
                background-color: #17a2b8;
                height: 100vh;
            }
            #login .container #login-row #login-column #login-box {
                margin-top: 120px;
                max-width: 600px;
                height: 320px;
                border: 1px solid #9C9C9C;
                background-color: #EAEAEA;
            }
            #login .container #login-row #login-column #login-box #login-form {
                padding: 20px;
            }
            #login .container #login-row #login-column #login-box #login-form #register-link {
                margin-top: -85px;
            }
        </style>
    </head>
    <body>
        <div id="login">
            <h3 class="text-center text-white pt-5">Login form</h3>
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center">
                    <div id="login-column" class="col-md-6">
                        <div id="login-box" class="col-md-12">
                            <form id="login-form" class="form" action="" method="post">
                                <h3 class="text-center text-info">Login</h3>
                                <div class="form-group">
                                    <label for="username" class="text-info">Kimlik Numarası:</label><br>
                                    <input type="text" name="tc" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="password" class="text-info">Şifre:</label><br>
                                    <input type="text" name="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="remember-me" class="text-info"><span>Remember me</span> <span><input id="remember-me" name="remember-me" type="checkbox"></span></label><br>
                                    <input type="submit" name="login" class="btn btn-info btn-md" value="submit">
                                </div>
                                <div id="register-link" class="text-right">
                                    <a href="#" class="text-info">Register here</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%
            if (request.getParameter("login") != null){
                EmployeeService service = new EmployeeService();
                String tcno = request.getParameter("tc");
                String password = request.getParameter("password");
                Employee employee = service.AccountExist(tcno, password);
                
                if (employee != null){
                    session.setAttribute("employeeid", employee.getID());
                    session.setAttribute("authorization", "employee");
                    
                    Cookie tc = new Cookie("tcno",employee.getTCNo());
                    Cookie pass = new Cookie("password",employee.getPassword());
                    tc.setMaxAge(60*60*24);
                    pass.setMaxAge(60*60*24);
                    response.addCookie(tc);
                    response.addCookie(pass);
                    
                    response.sendRedirect("index.jsp");
                }
                else{%>
                    <script>alert("Hesap Doğru Değil");</script>
                <%}
            }
        %>
    </body>
</html>
