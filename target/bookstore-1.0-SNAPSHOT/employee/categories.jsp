<%-- 
    Document   : categories
    Created on : 3 Ara 2022, 00:08:17
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataAccess.Entities.Category"%>
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
                    <h2 class="text-header text-center">Kategoriler</h2>
                </div>
                <div class="card-body">
                    <a href="add-category.jsp" class="btn btn-primary mt-2 mb-2"><i class="icon-plus"></i> Yeni Ekle</a>
                    <table class="table table-bordered table-hover text-center">
                        <thead>
                        <th scope="col">Id</th>
                        <th scope="col">Kategori Adı</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        </thead>
                        <tbody>
                            <%
                            CategoryService service=new CategoryService();
                            ArrayList<Category> categories=new ArrayList<Category>();
                            categories=service.List();
                            for(int i=0;i<categories.size();i++)
                            {
                                %>
                                <tr>
                                    <td><%=categories.get(i).getID()%></td>
                                    <td><%=categories.get(i).getName()%></td>
                                    <td><a href="update-category.jsp?ID=<%=categories.get(i).getID()%>" class="btn btn-warning"><i class="ti-pencil"></i> Güncelle</a></td>
                                    <td><a href="delete-category.jsp?ID=<%=categories.get(i).getID()%>" class="btn btn-danger" onclick="return confirm('Emin misin?')"><i class="icon-trash"></i> Sil</a></td>
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
