<%-- 
    Document   : authors
    Created on : 3 Ara 2022, 00:19:01
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
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
                    <h2 class="text-header text-center">Yazarlar</h2>
                </div>
                <div class="card-body">
                    <a href="add-author.jsp" class="btn btn-primary mt-2 mb-2"><i class="icon-plus"></i> Yeni Ekle</a>
                    <input type="text" class="form-control mb-2" id="myInput" onkeyup="myFunction()" placeholder="Yazar Adını Girerek Arama Yapın..">
                    <table class="table table-bordered table-hover text-center" id="myTable">
                        <thead>
                        <th scope="col">Id</th>
                        <th scope="col">Adı</th>
                        <th scope="col">Soyadı</th>
                        <th scope="col">Doğum Tarihi</th>
                        <th scope="col">Biyografi</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        </thead>
                        <tbody>
                            <%
                            AuthorService service=new AuthorService();
                            ArrayList<Author> authors=new ArrayList<Author>();
                            authors=service.List();
                            for(int i=0;i<authors.size();i++){
                                %>
                                <tr>
                                    <td><%=authors.get(i).getID()%></td>
                                    <td><%=authors.get(i).getFirstName()%></td>
                                    <td><%=authors.get(i).getLastName()%></td>
                                    <td><%=authors.get(i).getBirthDate()%></td>
                                    <td><%=authors.get(i).getBiography()%></td>
                                    <td><a href="update-author.jsp?ID=<%=authors.get(i).getID()%>" class="btn btn-warning"><i class="ti-pencil"></i> Güncelle</a></td>
                                    <td><a href="delete-author.jsp?ID=<%=authors.get(i).getID()%>" class="btn btn-danger"><i class="icon-trash"></i> Sil</a></td>
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
