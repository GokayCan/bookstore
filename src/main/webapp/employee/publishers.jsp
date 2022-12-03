<%-- 
    Document   : publishers
    Created on : 3 Ara 2022, 00:17:00
    Author     : Bahadır
--%>

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
                    <h2 class="text-header text-center">Yayınevleri</h2>
                </div>
                <div class="card-body">
                    <a href="add-publisher.jsp" class="btn btn-primary mt-2 mb-2"><i class="icon-plus"></i> Yeni Ekle</a>
                    <table class="table table-bordered table-hover text-center">
                        <thead>
                        <th scope="col">Id</th>
                        <th scope="col">Yayınevi Adı</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        </thead>
                        <tbody>
                            <%
                            PublisherService service=new PublisherService();
                            ArrayList<Publisher> publishers=new ArrayList<Publisher>();
                            publishers=service.List();
                            for(int i=0;i<publishers.size();i++){
                                %>
                                <tr>
                                    <td><%=publishers.get(i).getID()%></td>
                                    <td><%=publishers.get(i).getName()%></td>
                                    <td><a href="update-publisher.jsp?ID=<%=publishers.get(i).getID()%>" class="btn btn-warning"><i class="ti-pencil"></i> Güncelle</a></td>
                                    <td><a href="delete-publisher.jsp?ID=<%=publishers.get(i).getID()%>" class="btn btn-danger"><i class="icon-trash"></i> Sil</a></td>
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
