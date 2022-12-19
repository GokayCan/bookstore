<%-- 
    Document   : categories
    Created on : 3 Ara 2022, 01:23:18
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
                    <div class="card">
                        <div class="card-header">
                            <h2>Kitap Kategorileri</h2>
                        </div>
                        <div class="card-body">
                            <table class="table table-striped table-hover text-center">
                                <thead>
                                <th scope="col">Adı</th>
                                <th></th>
                                </thead>
                                <tbody>
                                    <%
                                        CategoryService service=new CategoryService();
                                        ArrayList<Category> categories=new ArrayList<Category>();
                                        categories=service.List();
                                        for(int i=0;i<categories.size();i++){
                                    %>
                                    <tr>
                                        <td><%=categories.get(i).getName()%></td>
                                        <td><a href="book-category.jsp?ID=<%=categories.get(i).getID()%>" class="btn btn-outline-info"><i class="fas fa-search fa-fw"></i> Kitapları Görüntüle</a></td>
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
