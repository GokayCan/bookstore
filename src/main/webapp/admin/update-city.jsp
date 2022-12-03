<%-- 
    Document   : update-city
    Created on : 2 Ara 2022, 22:16:36
    Author     : Bahadır
--%>

<%@page import="DataAccess.Entities.City"%>
<%@page import="BusinessLayer.CityService"%>
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
            <h1 class="m-0 text-dark">Şehir Menüsü</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">Ana Sayfa</a></li>
              <li class="breadcrumb-item active"><a href="cities.jsp">Şehirler</a></li>
              <li class="breadcrumb-item active">Şehir Güncelle</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        
        
        <%
            int ID=Integer.parseInt(request.getParameter("ID"));
            
            CityService service=new CityService();
            City city=new City();
            
            city=service.getByID(ID);
            
        
        %>
        
        <form method="post" action="#">
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
                    <div class="form-group mb-2">
                        <label class="form-label">Şehir Adı:</label>
                        <input type="text" class="form-control" name="txtName" value="<%=city.getName()%>">
                    </div>
                </div>
                <div class="card-footer">
                    <div style="display:flex;justify-content: end;">
                        <button type="submit" name="save" class="btn btn-success"><i class="fas fa-check"></i> Kaydet</button>
                    </div>
                </div>
            </div>
        </form>
                    
                    
        <%
            if(request.getParameter("save")!=null){
                
                city.setName(request.getParameter("txtName"));
                service.Update(city);
                
                response.sendRedirect("cities.jsp");
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