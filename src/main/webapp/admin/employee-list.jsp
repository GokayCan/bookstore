<%-- 
    Document   : employee-list
    Created on : 5 Ara 2022, 22:30:43
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page import="DataAccess.Entities.Employee"%>
<%@page import="BusinessLayer.EmployeeService"%>
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
            <h1 class="m-0 text-dark">Çalışan Menüsü</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">Ana Sayfa</a></li>
              <li class="breadcrumb-item active">Çalışanlar</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        
        
        <%
            EmployeeService service = new EmployeeService();
            ArrayList<Employee> employees=new ArrayList<Employee>();
            employees=service.List();
            for(int i=0;i<employees.size();i++){
                %>
        
            <div class="card mt-2">
                <div class="card-header">
                    <div class="row col-12">
                        <div class="col-11">
                            <h2 class="text-header"><%=employees.get(i).getFirstName()%> <%=employees.get(i).getLastName()%></h2>
                        </div>
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
                            <img class="img-fluid" src="../assets/<%=employees.get(i).getDocument()%>" style="width:400px;height: 620px;"></img>
                        </div>
                        <div class="col-6">
                            <p>İşe Başlama Tarihi<%=employees.get(i).getStartDate()%></p>
                        </div>
                    </div>
                </div>
                </div>
                        <div class="card-footer">
                            <div style="display:flex;justify-content: end">
                                <a href="update-employee.jsp?ID=<%=employees.get(i).getID()%>" class="btn btn-warning mr-2"><i class="far fa-edit"></i> Güncelle</a>
                                <a href="delete-employee.jsp?ID=<%=employees.get(i).getID()%>" class="btn btn-danger" onclick="return confirm('Emin misin?')"><i class="far fa-trash-alt"></i> Sil</a>
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
