<%-- 
    Document   : books
    Created on : 3 Ara 2022, 01:29:37
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
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
            </div>
                                
        <%        
            }
        %>
            </div>
            <%@ include file="footer.jsp" %>
        </div>
    </div>
    <%@ include file="script.jsp" %>
    
</body>
</html>
