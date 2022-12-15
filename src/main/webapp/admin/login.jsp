<%-- 
    Document   : login.jsp
    Created on : 5 Dec 2022, 22:53:32
    Author     : mavia
--%>

<%@page import="BusinessLayer.AdminService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="header.jsp" %>
<body class="hold-transition login-page">
    <h2></h2>
<div class="login-box">
    <div class="login-logo">
        <h2><b>Admin Giriş Yap</b> <br> SGB</h2>
    </div>
    <!-- /.login-logo -->
    <div class="card">
        <div class="card-body login-card-body"> 

            <form action="#" method="post">
                <div class="input-group mb-3">
                    <input type="text" name="username" class="form-control" placeholder="Kullanıcı Adı Giriniz">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-user"></span>
                            </div>
                        </div>
                </div>
                <div class="input-group mb-3">
                    <input type="password" name="password" class="form-control" placeholder="Şifre Giriniz">
                        <div class="input-group-append">
                            <div class="input-group-text">
                                <span class="fas fa-key"></span>
                            </div>
                        </div>
                </div>
                <div class="row">
                    <div class="col-8">
                        <div class="icheck-primary">
                            <input type="checkbox" id="remember">
                                <label for="remember">
                                    Beni Hatırla
                                </label>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" name="login" class="btn  btn-info btn-block" ><i class="fas fa-lock-open"></i> Giriş </button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>
            
        </div>
        <!-- /.login-card-body -->
    </div>
</div>
<%
    if (request.getParameter("login") != null) {
        AdminService service = new AdminService();
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean result = service.IsAccountExist(username, password);

        if (result) {
            session.setAttribute("authorization", "admin");
            response.sendRedirect("index.jsp");
        } else {%>
<script>alert("Hesap Doğru Değil");</script>
<%}
    }
%>
<%@ include file="script.jsp" %>
</body>
</html>
