<%-- 
    Document   : book-add
    Created on : 5 Ara 2022, 13:18:02
    Author     : Bahadır
--%>

<%@page import="DataAccess.Entities.Publisher"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.PublisherService"%>
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
            <h1 class="m-0 text-dark">Kitap Menüsü</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">Ana Sayfa</a></li>
              <li class="breadcrumb-item active"><a href="books.jsp">Kitaplar</a></li>
              <li class="breadcrumb-item active">Yeni Kitap</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <form action="AdminBookAdd" method="post" enctype="multipart/form-data">
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
                        <label class="form-label">Kitap Adı</label>
                        <input type="text" class="form-control" name="txtName">
                    </div>
                </div>
                <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kitap Konusu</label>
                            <textarea class="form-control" name="txtSubject"></textarea>
                        </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kitap Stok Miktarı</label>
                        <input type="text" class="form-control" name="txtStock">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kitap Yayım Tarihi</label>
                        <input type="date" class="form-control" name="txtPublishDate">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kitap Yayınevi</label>
                        <select class="form-control form-select" name="slcPublisher">
                            <%
                                PublisherService publisherService=new PublisherService();
                                ArrayList<Publisher> publishers=new ArrayList<Publisher>();
                                publishers=publisherService.List();
                                for(int i=0;i<publishers.size();i++){
                            %>
                            <option value="<%=publishers.get(i).getID()%>"><%=publishers.get(i).getName()%></option>
                            <%        
                                }
                            %>      
                        </select>
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kitap Sayfa Sayısı</label>
                        <input type="text" class="form-control" name="txtPageNumber">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kitap Baskı Sayısı</label>
                        <input type="text" class="form-control" name="txtPrintCount">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label for="exampleInputFile" class="form-label">Kitap Kapak</label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="exampleInputFile" name="txtImage">
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
