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
                    
                    <nav aria-label="Pagination">
                        <hr class="my-0" />
                        <ul class="pagination justify-content-center my-4">
                            <li class="page-item disabled"><a class="page-link" href="#" tabindex="-1" aria-disabled="true">Önceki</a></li>
                            <li class="page-item active" aria-current="page"><a class="page-link" href="#!">1</a></li>
                            <li class="page-item"><a class="page-link" href="#!">2</a></li>
                            <li class="page-item"><a class="page-link" href="#!">3</a></li>
                            <li class="page-item disabled"><a class="page-link" href="#!">...</a></li>
                            <li class="page-item"><a class="page-link" href="#!">15</a></li>
                            <li class="page-item"><a class="page-link" href="#!">Sonraki</a></li>
                        </ul>
                    </nav>
                </div>
                <!-- Side widgets-->
                <div class="col-lg-4">
                    <!-- Search widget-->
                    <div class="card mb-4">
                        <div class="card-header">Kitap Arayın</div>
                        <div class="card-body">
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Kitap Adı Girin" aria-label="Kitap Adı Girin" aria-describedby="button-search" />
                                <button class="btn btn-primary" id="button-search" type="button">Ara.....</button>
                            </div>
                        </div>
                    </div>
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

