<%-- 
    Document   : books
    Created on : 3 Ara 2022, 01:29:37
    Author     : Bahadır
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataAccess.Entities.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.*" %>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="header.jsp" %>
    <body class="sb-nav-fixed">
        <%@ include file="navbar.jsp" %>
        <div id="layoutSidenav">
            <%@ include file="sidebar.jsp" %>
            <div id="layoutSidenav_content">
                <div class="m-2">
                    <div class="card">
                        <div class="card-header">
                            <h2>Kitaplar</h2>
                        </div>
                        <div class="card-body">
                            <table class="table table-striped table-hover text-center">
                                <thead>
                                <th scope="col">Kitap Adı</th>
                                <th scope="col">Stok Miktarı</th>
                                <th scope="col">Sayfa Sayısı</th>
                                <th scope="col">Yazarlar</th>
                                <th scope="col">Basım</th>
                                <th scope="col">Yayınevi</th>
                                <th scope="col">Çevirmenler</th>
                                <th scope="col">Kategoriler</th>
                                <th scope="col">Basım Tarihi</th> 
                                <th></th>
                                </thead>
                                <tbody>
                                    <%
                                        BookService service = new BookService();
                                        ArrayList<Book> books=new ArrayList<Book>();
                                        books=service.List();
                                        for(int i=0;i<books.size();i++){
                                    %>
                                    <tr>
                                        <td><%=books.get(i).getName()%></td>
                                        <td><%=books.get(i).getStock()%></td>
                                        <td><%=books.get(i).getPageNumber()%></td>
                                        <td><%=books.get(i).getAuthors()%></td>
                                        <td><%=books.get(i).getPrintCount()%></td>
                                        <td><%=books.get(i).getPublisherName()%></td>
                                        <td><%=books.get(i).getTranslators()%></td>
                                        <td><%=books.get(i).getCategories()%></td>
                                        <td><%=books.get(i).getPublishDate()%></td>
                                        <td><a class="btn btn-outline-info"><i class="fas fa-eye fa-fw"></i> Detay</a></td>
                                    </tr>
                                    <%
                                        }
                                    %>    
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <%@ include file="footer.jsp" %>
            </div>
        </div>
        <%@ include file="script.jsp" %>
    </body>
</html>
