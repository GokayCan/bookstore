<%-- 
    Document   : update-employee
    Created on : 7 Ara 2022, 21:45:53
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page import="BusinessLayer.*"%>
<%@page import="DataAccess.Entities.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<!-- header -->
<%@ include file="header.jsp" %>
<body class="hold-transition sidebar-mini layout-fixed">
        <script>
    function Validate(){
        let txtFirstName = document.forms["form"]["txtFirstName"].value;
        let txtLastName = document.forms["form"]["txtLastName"].value;
        let txtUserName = document.forms["form"]["txtUserName"].value;
        let txtPassword = document.forms["form"]["txtPassword"].value;
        let txtStartDate = document.forms["form"]["txtStartDate"].value;
        
        if (txtFirstName === "" || txtLastName === "" || txtUserName === "" || txtPassword  === "" || txtStartDate === ""){
            alert("Her Kutucuğu Doldurun");
            return false;
        }
        return true;
    }
</script>
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
              <li class="breadcrumb-item active"><a href="cities.jsp">Çalışanlar</a></li>
              <li class="breadcrumb-item active">Çalışan Güncelle</li>
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
            
            EmployeeService service=new EmployeeService();
            Employee employee=new Employee();
            
            employee=service.getByID(ID);
        
        %>
        
        <form action="EmployeeUpdate" method="post" enctype="multipart/form-data" name="form" onsubmit="return Validate();">
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
                        <label class="form-label">Çalışan Adı</label>
                        <input type="hidden" name="txtID" value="<%=employee.getID()%>">
                        <input type="text" class="form-control" name="txtFirstName" value="<%=employee.getFirstName()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Çalışan Soyadı</label>
                        <input type="text" class="form-control" name="txtLastName" value="<%=employee.getLastName()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Çalışan Kullanıcı Adı</label>
                        <input type="text" class="form-control" name="txtUserName" value="<%=employee.getTCNo()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Çalışan Şifresi</label>
                        <input type="text" class="form-control" name="txtPassword" value="<%=employee.getPassword()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Çalışan Başlangıç Tarihi</label>
                        <input type="date" class="form-control" name="txtStartDate" value="<%=employee.getStartDate()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label for="exampleInputFile" class="form-label">Çalışan Profil Fotoğrafı</label>
                        <input type="hidden" class="form-control"  name="txtImageUrl" value="<%=employee.getDocument()%>">
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="exampleInputFile" name="txtImage" >
                            <label class="custom-file-label" for="exampleInputFile" >Kapak Fotoğrafı Seç</label>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <div style="display:flex;justify-content: end;">
                        <button type="submit" name="save" class="btn btn-success"><i class="fas fa-check"></i> Kaydet</button>
                    </div>
                </div>
            </div>
        </form>
                    
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
