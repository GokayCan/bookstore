<%@page import="DataAccess.Entities.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="header.jsp" %>
    <body>
        <!-- Responsive navbar-->
        <%@ include file="navbar.jsp" %>
        <!-- Page content-->
    <div class="container">
        <div class="row">
            <!-- Blog entries-->
            <div class="col-lg-12">
                <!-- Books-->

                <%
                    int ID =Integer.parseInt(request.getParameter("ID"));
                    BookService bookService = new BookService();
                    Book book = new Book();
                    book = bookService.getByID(ID);
                %>

                <div class="card mb-4">
                    <a href="#!"><img class="card-img-top" src="../assets/<%=book.getImageUrl()%>" style="height: 700px;" alt="..." /></a>
                    <div class="card-body">
                        <h2 class="card-title"><%=book.getName()%></h2>
                        <p class="card-text">Konu:<%=book.getSubject()%></p>
                        <p class="card-text">Yayınevi:<%=book.getPublisherName()%></p>
                        <p class="card-text">Basım Tarihi:<%=book.getPublishDate()%></p>
                        <p class="card-text">Baskı Sayısı:<%=book.getPrintCount()%></p>
                        <p class="card-text">Sayfa Sayısı:<%=book.getPageNumber()%></p>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!-- Footer-->
    <%@ include file="footer.jsp" %>
    <!-- Bootstrap core JS-->
    <%@ include file="script.jsp" %>
</body>
</html>

