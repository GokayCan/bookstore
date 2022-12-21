<%-- 
    Document   : book-list
    Created on : 21 Ara 2022, 01:25:18
    Author     : user
--%>

<%@include file="authorization.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataAccess.Entities.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.BookService" %>
<html>
<!-- header -->
<%@ include file="header.jsp" %>
<body class="container-scroller">
<div class="wrapper">
  <!-- Navbar -->
    <%@ include file="navbar.jsp" %>
  <!-- Sidebar -->
    <%@ include file="sidebar.jsp" %>
  <!-- Content -->
  <div class="content-wrapper">
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0 text-dark">Kitap Listesi</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item active">Kitaplar</li>
            </ol>
          </div>
        </div>
      </div>
    </div>
    <section class="content">
        
        
        <%
            BookService service = new BookService();
            ArrayList<Book> books=new ArrayList<Book>();
            books=service.List();
            for(int i=0;i<books.size();i++){
                %>
        
            <div class="card mt-2">
                <div class="card-header">
                    <div class="row col-12">
                        <div class="col-11">
                            <h2 class="text-header"><%=books.get(i).getName()%></h2>
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
                            <img class="img-fluid" src="../assets/<%=books.get(i).getImageUrl()%>" style="width:400px;height: 620px;"></img>
                        </div>
                        <div class="col-6">
                            <p>Konu:<%=books.get(i).getSubject()%></p>
                            <p>Yazarlar:<%=books.get(i).getAuthors()%></p>
                            <p>Çevirmenler:<%=books.get(i).getTranslators()%></p>
                            <p>Kategorileri:<%=books.get(i).getCategories()%></p>
                            <p>Yayınevi:<%=books.get(i).getPublisherName()%></p>
                            <p>Basım Sayısı:<%=books.get(i).getPrintCount()%></p>
                            <p>Sayfa Sayısı:<%=books.get(i).getPageNumber()%></p>
                            <p>Basım Tarihi:<%=books.get(i).getPublishDate()%></p>
                            <p>Stok Sayısı:<%=books.get(i).getStock()%></p>
                        </div>
                    </div>
                </div>
                </div>
                        <div class="card-footer">
                            <div style="display:flex;justify-content: end">
                                <a href="update-book.jsp?ID=<%=books.get(i).getID()%>" class="btn btn-warning mr-2"><i class="far fa-edit"></i> Güncelle</a>
                                <a href="delete-book.jsp?ID=<%=books.get(i).getID()%>" class="btn btn-danger"><i class="far fa-trash-alt"></i> Sil</a>
                            </div>
                        </div>
            </div>
                                
        <%        
            }
        %>
        
    </section>
  
  
  
  </div>
  <!-- Footer -->
    <%@ include file="footer.jsp" %>
</div>
<!-- Scripts -->
<%@ include file="script.jsp" %>
</body>
</html>
