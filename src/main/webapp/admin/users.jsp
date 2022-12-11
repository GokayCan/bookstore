<%-- 
    Document   : users
    Created on : 2 Ara 2022, 11:19:14
    Author     : Bahadır
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataAccess.Entities.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.*" %>
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
        
        <div class="card">
            <div class="card-header">
                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                      <i class="fas fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                      <i class="fas fa-times"></i>
                    </button>
              </div>
            </div>
            <div class="card-body">
                <div class="row mb-2">
                    <div class="col-10">
                      <a href="add-user.jsp" class="btn btn-primary"><i class="fas fa-plus"></i>
                        Yeni Ekle</a>
                    </div>
                    <div class="col-2">
                      <div style="display: flex;justify-content:end">
                        <input class="form-control" placeholder="Ara...">
                      </div>
                    </div>
                </div>
                <table class="table table-bordered table-hover" style="text-align: center;">
                    <thead>
                        <th scope="col">ID</th>
                        <th scope="col">İsim</th>
                        <th scope="col">Soyisim</th>
                        <th scope="col">Eposta</th>
                        <th scope="col">Telefon Numarası</th>
                        <th scope="col">Şehir</th>
                        <th scope="col">Doğum Tarihi</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </thead>
                    <tbody>
                        <%
                            UserService service = new UserService();
                            ArrayList<User> users = new ArrayList<User>();
                            users=service.List();
                            for(int i=0;i<users.size();i++){
                                %>

                                <tr>
                                    <td><%=users.get(i).getID()%></td>
                                    <td><%=users.get(i).getFirstName()%></td>
                                    <td><%=users.get(i).getLastName()%></td>
                                    <td><%=users.get(i).getEmail()%></td>
                                    <td><%=users.get(i).getPhoneNumber()%></td>
                                    <td><%=users.get(i).getCityName()%></td>
                                    <td><%=users.get(i).getBirthDate()%></td>
                                    <td>
                                        <a href="update-user.jsp?ID=<%=users.get(i).getID()%>" class="btn btn-warning"><i class="far fa-edit"></i> Güncelle</a>
                                    </td>
                                    <td>
                                        <a href="delete-user.jsp?ID=<%=users.get(i).getID()%>" class="btn btn-danger"><i class="far fa-trash-alt"></i> Sil</a>
                                    </td>
                                </tr>
                        <%        
                            }
                        %>
                    </tbody>
                </table>
            </div>
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
