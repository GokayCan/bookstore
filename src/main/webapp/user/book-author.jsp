<%-- 
    Document   : book-author
    Created on : 19 Ara 2022, 14:32:06
    Author     : safag
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
                    int ID=Integer.parseInt(request.getParameter("ID"));
                    BookService service = new BookService();
                    ArrayList<Book> books = new ArrayList<Book>();
                    books = service.ListByAuthor(ID);
                    for (int i = 0; i < books.size(); i++) {
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
                            <a href="loan-book.jsp?ID=<%=books.get(i).getID()%>" class="btn btn-info mr-2"><i class="fas fa-arrow-down"></i> Ödünç Al</a>
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