<%-- 
    Document   : index
    Created on : 5 Kas 2022, 00:09:20
    Author     : Bahadır
--%>

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
                    <%@ include file="book-list.jsp" %>
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

