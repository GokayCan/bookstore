<%-- 
    Document   : navbar
    Created on : 12 Ara 2022, 10:10:13
    Author     : Bahadır
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="index.jsp">Book Store</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Ana Sayfa</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Giriş Yap
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="../admin/login.jsp">Admin</a></li>
                        <li><a class="dropdown-item" href="../employee/login.jsp">Çalışan</a></li>
                        <li><a class="dropdown-item" href="../user/login.jsp">Kullanıcı</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!-- Page header with logo and tagline-->
<header class="py-5 bg-light border-bottom mb-4">
    <div class="container">
        <div class="text-center my-5">
            <h1 class="fw-bolder">Welcome to BookStore!</h1>
            <p class="lead mb-0">Kitap Okuyun</p>
        </div>
    </div>
</header>
