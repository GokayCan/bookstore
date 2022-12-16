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
            <div class="col-lg-8">
                <!-- Books-->

                <%
                    int ID=Integer.parseInt(request.getParameter("ID"));
                    BookService bookService = new BookService();
                    ArrayList<Book> books = new ArrayList<Book>();
                    books = bookService.ListByAuthor(ID);

                    for (int i = 0; i < books.size(); i++) {

                %>

                <div class="card mb-4">
                    <a href="#!"><img class="card-img-top" src="../assets/<%=books.get(i).getImageUrl()%>" style="height: 400px;" alt="..." /></a>
                    <div class="card-body">
                        <h2 class="card-title"><%=books.get(i).getName()%></h2>
                        <p class="card-text"><%=books.get(i).getSubject()%></p>
                        <a class="btn btn-primary" href="book-detail.jsp?ID=<%=books.get(i).getID()%>">Detay →</a>
                    </div>
                </div>

                <%
                    }

                %>

            </div>
            <!-- Side widgets-->
            <div class="col-lg-4">
                <!-- Auhtors-->
                <%@ include file="author-list.jsp" %>
                <!-- Categorie-->
                <%@ include file="category-list.jsp" %>

            </div>
        </div>
    </div>
    <!-- Footer-->
    <%@ include file="footer.jsp" %>
    <!-- Bootstrap core JS-->
    <%@ include file="script.jsp" %>
</body>
</html>

