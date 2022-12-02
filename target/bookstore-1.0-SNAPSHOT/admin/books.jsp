<%-- 
    Document   : books
    Created on : 2 Ara 2022, 14:05:07
    Author     : Bahadır
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataAccess.Entities.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.BookService" %>
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
            <h1 class="m-0 text-dark">Kitaplar Menüsü</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">Ana Sayfa</a></li>
              <li class="breadcrumb-item active">Kitaplar</li>
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
                      <a class="btn btn-primary"><i class="fas fa-plus"></i>
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
                        <th scope="col">Kitap Adı</th>
                        <th scope="col">Stok Miktarı</th>
                        <th scope="col">Sayfa Sayısı</th>
                        <th scope="col">Yazarlar</th>
                        <th scope="col">Basım</th>
                        <th scope="col">Yayınevi</th>
                        <th scope="col">Çevirmenler</th>
                        <th scope="col">Kategoriler</th>
                        <th scope="col">Basım Tarihi</th>                     
                        <th scope="col">Durumu</th>
                        <th scope="col">Fotoğraf</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </thead>
                    <tbody>
                        <%
                            BookService service = new BookService();
                            ArrayList<Book> books=new ArrayList<Book>();
                            books=service.List();
                            for(int i=0;i<books.size();i++){
                                %>

                                <tr>
                                    <td><%=books.get(i).getID()%></td>
                                    <td><%=books.get(i).getName()%></td>
                                    <td><%=books.get(i).getStock()%></td>
                                    <td><%=books.get(i).getPageNumber()%></td>
                                    <td><%=books.get(i).getAuthors()%></td>
                                    <td><%=books.get(i).getPrintCount()%></td>
                                    <td><%=books.get(i).getPublisherName()%></td>
                                    <td><%=books.get(i).getTranslators()%></td>
                                    <td><%=books.get(i).getCategories()%></td>
                                    <td><%=books.get(i).getPublishDate()%></td>
                                    <td><%=books.get(i).getEnable()%></td>
                                    <td><%=books.get(i).getImageUrl()%></td>
                                    <td>
                                        <a href="#" class="btn btn-warning"><i class="far fa-edit"></i> Güncelle</a>
                                    </td>
                                    <td>
                                        <a href="#" class="btn btn-danger"><i class="far fa-trash-alt"></i> Sil</a>
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
