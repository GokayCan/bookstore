<%-- 
    Document   : cities
    Created on : 2 Ara 2022, 10:49:13
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataAccess.Entities.City"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.CityService" %>
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
            <h1 class="m-0 text-dark">Şehirler Menüsü</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">Ana Sayfa</a></li>
              <li class="breadcrumb-item active">Şehirler</li>
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
                      <a class="btn btn-primary" href="add-city.jsp"><i class="fas fa-plus"></i>
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
                        <th scope="col">Şehir Adı</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </thead>
                    <tbody>
                        <%
                            CityService service=new CityService();
                            ArrayList<City> cities = new ArrayList<City>();
                            cities=service.List();
                            for(int i=0;i<cities.size();i++){
                                %>

                                <tr>
                                    <td><%=cities.get(i).getID()%></td>
                                    <td><%=cities.get(i).getName()%></td>
                                    <td>
                                        <a href="update-city.jsp?ID=<%=cities.get(i).getID()%>" class="btn btn-warning"><i class="far fa-edit"></i> Güncelle</a>
                                    </td>
                                    <td>
                                        <a href="delete-city.jsp?ID=<%=cities.get(i).getID()%>" class="btn btn-danger" onclick="return confirm('Emin misin?')"><i class="far fa-trash-alt"></i> Sil</a>
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
