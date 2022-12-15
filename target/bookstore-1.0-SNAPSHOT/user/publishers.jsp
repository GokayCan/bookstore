<%-- 
    Document   : publishers
    Created on : 3 Ara 2022, 01:28:36
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
                            <h2>Yayınevleri</h2>
                        </div>
                        <div class="card-body">
                            <input type="text" class="form-control mb-2" id="myInput" onkeyup="myFunction()" placeholder="Arama Yapın...">
                            <table class="table table-striped table-hover text-center" id="myTable">
                                <thead>
                                <th scope="col">Adı</th>
                                <th></th>
                                </thead>
                                <tbody>
                                    <%
                                        PublisherService service=new PublisherService();
                                        ArrayList<Publisher> publishers=new ArrayList<Publisher>();
                                        publishers=service.List();
                                        for(int i=0;i<publishers.size();i++){
                                    %>
                                    <tr>
                                        <td><%=publishers.get(i).getName()%></td>
                                        <td><a class="btn btn-outline-info"><i class="fas fa-search fa-fw"></i> Kitapları Görüntüle</a></td>
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
