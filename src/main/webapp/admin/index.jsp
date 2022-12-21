<%-- 
    Document   : index
    Created on : 5 Kas 2022, 00:05:25
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <!-- header -->
    <%@ include file="header.jsp" %>
    <body class="hold-transition sidebar-mini layout-fixed">
    <div class="wrapper">
        <!-- Navbar -->
        <%@ include file="navbar.jsp" %>
        <!-- Sidebar -->
        <%@ include file="sidebar.jsp" %>
        <!-- Content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0 text-dark">Ana Sayfa</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="index.jsp">Ana Sayfa</a></li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <section class="content">
                <div class="small-box bg-info">
                    <div class="inner">
                        <h3>150</h3>

                        <p>Kitap Bulunmakta</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-book"></i>
                    </div>
                    <a href="books.jsp" class="small-box-footer">Kitapları Görüntüle <i class="fas fa-arrow-circle-right"></i></a>
                </div>
                <div class="small-box bg-primary">
                    <div class="inner">
                        <h3>150</h3>

                        <p>Çalışan Bulunmakta</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-briefcase"></i>
                    </div>
                    <a href="employees.jsp" class="small-box-footer">Çalışanlar Görüntüle <i class="fas fa-arrow-circle-right"></i></a>
                </div>
                <div class="small-box bg-success">
                    <div class="inner">
                        <h3>150</h3>

                        <p>Üye Bulunmakta</p>
                    </div>
                    <div class="icon">
                        <i class="fas fa-users"></i>
                    </div>
                    <a href="users.jsp" class="small-box-footer">Üyeleri Görüntüle <i class="fas fa-arrow-circle-right"></i></a>
                </div>
            </section>
            <!-- /.content -->



        </div>
        <!-- Footer -->
        <%@ include file="footer.jsp" %>
    </div>
    <!-- Scripts -->
    <%@ include file="script.jsp" %>
</body>
</html>
