<%-- 
    Document   : add-author
    Created on : 3 Ara 2022, 21:12:37
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<!-- header -->
<%@ include file="header.jsp" %>
<body class="hold-transition sidebar-mini layout-fixed">
<script>
    function Validate(){
        let txtFirstName = document.forms["form"]["txtFirstName"].value;
        let txtLastName = document.forms["form"]["txtLastName"].value;
        let txtBirthDate = document.forms["form"]["txtBirthDate"].value;
        let txtBiography = document.forms["form"]["txtBiography"].value;
        if (txtFirstName === "" || txtLastName === "" || txtBirthDate === "" || txtBiography === ""){
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
            <h1 class="m-0 text-dark">Yazar Menüsü</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">Ana Sayfa</a></li>
              <li class="breadcrumb-item active"><a href="categories.jsp">Yazarlar</a></li>
              <li class="breadcrumb-item active">Yeni Yazar</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <form method="post" action="#" name="form" onsubmit="return Validate();">
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
                        <label class="form-label">Yazar Adı:</label>
                        <input type="text" class="form-control" name="txtFirstName">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Yazar Soyadı:</label>
                        <input type="text" class="form-control" name="txtLastName">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Yazar Doğum Tarihi:</label>
                        <input type="date" class="form-control" name="txtBirthDate">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Yazar Biyografisi:</label>
                        <textarea class="form-control" name="txtBiography"></textarea>
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
                
                Author author=new Author();
                AuthorService service=new AuthorService();
                
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                
                java.util.Date BirthDate=sdf.parse(request.getParameter("txtBirthDate"));
                
                java.sql.Date sqlBirthDate = new java.sql.Date(BirthDate.getTime());

                String txtFirstName = new String(request.getParameter("txtFirstName").getBytes("ISO-8859-9"), "UTF-8");
                String txtLastName = new String(request.getParameter("txtLastName").getBytes("ISO-8859-9"), "UTF-8");
                String txtBiography = new String(request.getParameter("txtBiography").getBytes("ISO-8859-9"), "UTF-8");
                author.setFirstName(txtFirstName);
                author.setLastName(txtLastName);
                author.setBirthDate(sqlBirthDate);
                author.setBiography(txtBiography);
                service.Add(author);
                
                
                response.sendRedirect("authors.jsp");
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
