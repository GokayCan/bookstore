<%-- 
    Document   : authors
    Created on : 2 Ara 2022, 22:20:49
    Author     : Bahadır
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.*" %>
<%@page import="DataAccess.Entities.*"%>
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
            <h1 class="m-0 text-dark">Yazar Menüsü</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">Ana Sayfa</a></li>
              <li class="breadcrumb-item active">Yazarlar</li>
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
                      <a class="btn btn-primary" href="add-author.jsp"><i class="fas fa-plus"></i>
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
                        <th scope="col">Yazar Adı</th>
                        <th scope="col">Yazar Soyadı</th>
                        <th scope="col">Yazar Doğum Tarihi</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </thead>
                    <tbody>
                        <%
                            AuthorService service=new AuthorService();
                            ArrayList<Author> authors=new ArrayList<Author>();
                            authors=service.List();
                            for(int i=0;i<authors.size();i++){
                                %>

                                <tr>
                                    <td><%=authors.get(i).getID()%></td>
                                    <td><%=authors.get(i).getFirstName()%></td>
                                    <td><%=authors.get(i).getLastName()%></td>
                                    <td><%=authors.get(i).getBirthDate()%></td>
                                    <td>
                                        <a href="update-author.jsp?ID=<%=authors.get(i).getID()%>" class="btn btn-warning"><i class="far fa-edit"></i> Güncelle</a>
                                    </td>
                                    <td>
                                        <a href="delete-author.jsp?ID=<%=authors.get(i).getID()%>" class="btn btn-danger"><i class="far fa-trash-alt"></i> Sil</a>
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