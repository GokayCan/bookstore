<%-- 
    Document   : users
    Created on : 3 Ara 2022, 00:32:57
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
                    <h2 class="text-header text-center">Üyeler</h2>
                </div>
                <div class="card-body">
                    <a href="add-user.jsp" class="btn btn-primary mt-2 mb-2"><i class="icon-plus"></i> Yeni Ekle</a>
                    <table class="table table-bordered table-hover text-center">
                        <thead>
                        <th scope="col">ID</th>
                        <th scope="col">İsim</th>
                        <th scope="col">Soyisim</th>
                        <th scope="col">Eposta</th>
                        <th scope="col">Telefon Numarası</th>
                        <th scope="col">Şehir</th>
                        <th scope="col">Doğum Tarihi</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </thead>
                        <tbody>
                            <%
                            UserService service = new UserService();
                            ArrayList<User> users = new ArrayList<User>();
                            users=service.List();
                            for(int i=0;i<users.size();i++){
                                %>

                                <tr>
                                    <td><%=users.get(i).getID()%></td>
                                    <td><%=users.get(i).getFirstName()%></td>
                                    <td><%=users.get(i).getLastName()%></td>
                                    <td><%=users.get(i).getEmail()%></td>
                                    <td><%=users.get(i).getPhoneNumber()%></td>
                                    <td><%=users.get(i).getCityName()%></td>
                                    <td><%=users.get(i).getBirthDate()%></td>
                                    <td><a href="update-user.jsp" class="btn btn-warning"><i class="ti-pencil"></i> Güncelle</a></td>
                                    <td><a href="delete-user.jsp" class="btn btn-danger"><i class="icon-trash"></i> Sil</a></td>
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
