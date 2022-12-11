<%-- 
    Document   : user-list
    Created on : 7 Ara 2022, 22:31:45
    Author     : Bahadır
--%>

<%@page import="DataAccess.Entities.User"%>
<%@page import="BusinessLayer.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
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
            <h1 class="m-0 text-dark">Kullanıcı Menüsü</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">Ana Sayfa</a></li>
              <li class="breadcrumb-item active">Kullanıcılar</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        
        
        <%
            UserService service = new UserService();
            ArrayList<User> users=new ArrayList<User>();
            users=service.List();
            for(int i=0;i<users.size();i++){
                %>
        
            <div class="card mt-2">
                <div class="card-header">
                    <div class="row col-12">
                        <div class="col-1">
                            <div style="display: flex;justify-content: end">
                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                      <i class="fas fa-minus"></i>
                                    </button>
                                    <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                                      <i class="fas fa-times"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <div class="container">
                    <div class="row col-12">
                        <div class="col-6">
                            <img class="img-fluid" src="../assets/<%=users.get(i).getImageUrl()%>" style="width:300px;height: 400px;"></img>
                        </div>
                        <div class="col-6">
                            <p>Ad:<%=users.get(i).getFirstName()%></p>
                            <p>Soyad:<%=users.get(i).getLastName()%></p>
                            <p>Telefon Numarası:<%=users.get(i).getPhoneNumber()%></p>
                            <p>Mail Adresi:<%=users.get(i).getEmail()%></p>
                            <p>Şehir:<%=users.get(i).getCityName()%></p>
                            <p>Doğum Tarihi:<%=users.get(i).getBirthDate()%></p>
                        </div>
                    </div>
                </div>
                </div>
                        <div class="card-footer">
                            <div style="display:flex;justify-content: end">
                                <a href="update-user.jsp?ID=<%=users.get(i).getID()%>" class="btn btn-warning mr-2"><i class="far fa-edit"></i> Güncelle</a>
                                <a href="delete-book.jsp?ID=<%=users.get(i).getID()%>" class="btn btn-danger"><i class="far fa-trash-alt"></i> Sil</a>
                            </div>
                        </div>
            </div>
                                
        <%        
            }
        %>
        
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
