<%-- 
    Document   : books
    Created on : 3 Ara 2022, 00:32:43
    Author     : Bahadır
--%>
<%--@ include file="authorization.jsp" --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataAccess.Entities.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.*" %>
<!DOCTYPE html>
<html lang="tr">

<%@ include file="header.jsp" %>
<body>
  <div class="container-scroller">
    <!-- Navbar-->
    <%@ include file="navbar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <!-- Sidebar -->
      <%@ include file="sidebar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
            <div class="card mt-2">
                <div class="card-header">
                    <h2 class="text-header text-center">Kitaplar</h2>
                </div>
                <div class="card-body">
                    <a href="add-book.jsp" class="btn btn-primary mt-2 mb-2"><i class="icon-plus"></i> Yeni Ekle</a>
                    <table class="table table-bordered table-hover text-center">
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
                                    <td><a href="update-book.jsp?ID=<%=books.get(i).getID()%>" class="btn btn-warning"><i class="ti-pencil"></i> Güncelle</a></td>
                                    <td><a href="delete-book.jsp?ID=<%=books.get(i).getID()%>" class="btn btn-danger"><i class="icon-trash"></i> Sil</a></td>
                                </tr>
                            <%        
                                }
                            %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- footer -->
        <%@ include file="footer.jsp" %>
      </div>
    </div>   
  </div>

  <!-- script -->
  <%@ include file="script.jsp" %>
</body>
</html>
