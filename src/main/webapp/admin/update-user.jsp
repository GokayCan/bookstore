<%-- 
    Document   : update-user
    Created on : 7 Ara 2022, 21:58:28
    Author     : Bahadır
--%>
<%@page import="java.util.ArrayList"%>
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
        let txtEmail = document.forms["form"]["txtEmail"].value;
        let txtPassword = document.forms["form"]["txtPassword"].value;
        let txtPhoneNumber = document.forms["form"]["txtPhoneNumber"].value;
        let txtAddress = document.forms["form"]["txtAddress"].value;
        let txtBirthDate = document.forms["form"]["txtBirthDate"].value;
        //let txtImage = document.forms["form"]["txtImage"].value;
        
        if (txtFirstName === "" || txtLastName === "" || txtEmail === "" || txtPassword === "" || txtPhoneNumber === "" || txtAddress === "" || txtBirthDate === ""){
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
            <h1 class="m-0 text-dark">Kullanıcı Menüsü</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">Ana Sayfa</a></li>
              <li class="breadcrumb-item active"><a href="users.jsp">Kullanıcılar</a></li>
              <li class="breadcrumb-item active">Kullanıcı Güncelle</li>
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
            
            UserService userservice=new UserService();
            User user=new User();
            
            user = userservice.getByID(ID);
        
        %>
        
        <form action="AdminUserUpdate" method="post" enctype="multipart/form-data" name="form" onsubmit="return Validate();">
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
                        <label class="form-label">Kullanıcı Adı</label>
                        <input type="hidden" name="txtID" value="<%=user.getID()%>">
                        <input type="text" class="form-control" name="txtFirstName" value="<%=user.getFirstName()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kullanıcı Soyadı</label>
                        <input type="text" class="form-control" name="txtLastName" value="<%=user.getLastName()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kullanıcı Mail Adresi</label>
                        <input type="email" class="form-control" name="txtEmail" value="<%=user.getEmail()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kullanıcı Şifresi</label>
                        <input type="password" class="form-control" name="txtPassword" value="<%=user.getPassword()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kullanıcı Telefon Numarası</label>
                        <input type="number" class="form-control" name="txtPhoneNumber" value="<%=user.getPhoneNumber()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Şehir</label>
                        <select class="form-control form-select" name="slcCity">
                                <%
                                    CityService cityservice = new CityService();
                                    ArrayList<City> cities = new ArrayList<City>();
                                    cities=cityservice.List();
                                    for(int i=0;i<cities.size();i++){
                                    if(cities.get(i).getID() == user.getCityID()){%>
                                        <option selected value="<%=cities.get(i).getID()%>"><%=cities.get(i).getName()%></option>
                                    <%}
                                    else{%>
                                        <option value="<%=cities.get(i).getID()%>"><%=cities.get(i).getName()%></option>
                                    <%}       
                                    }%>
                                %>      
                        </select>
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kullanıcı Adresi</label>
                        <input type="text" class="form-control" name="txtAddress" value="<%=user.getAddress()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kullanıcı Doğum Tarihi</label>
                        <input type="date" class="form-control" name="txtBirthDate" value="<%=user.getBirthDate()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label for="exampleInputFile" class="form-label">Kullanıcı Profil Fotoğrafı</label>
                        <input type="hidden" class="form-control"  name="txtImageUrl" value="<%=user.getImageUrl()%>">
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
