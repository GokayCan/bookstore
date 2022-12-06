<%-- 
    Document   : add-author
    Created on : 3 Ara 2022, 23:42:01
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            
            <form method="post" action="#">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-center text-header">Yazar Ekle</h2>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Yazar Adı</label>
                            <input type="text" class="form-control" name="txtFirstName">
                        </div>
                        <div class="form-group mb-2">
                            <label class="form-label">Yazar Soyadı</label>
                            <input type="text" class="form-control" name="txtLastName">
                        </div>
                        <div class="form-group mb-2">
                            <label class="form-label">Yazar Doğum Tarihi</label>
                            <input type="date" class="form-control" name="txtBirthDate">
                        </div>
                            <div class="form-group mb-2">
                            <label class="form-label">Yazar Biyografisi</label>
                            <textarea class="form-control" name="txtBiography"></textarea>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div style="display: flex;justify-content: end;">
                            <button type="submit" class="btn btn-success" name="save"><i class="ti-check"></i> Kaydet</button>
                        </div>
                    </div>
                </div>
            </form>
            
            <%
                if(request.getParameter("save")!=null){

                    Author author=new Author();
                    AuthorService service=new AuthorService();

                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

                    java.util.Date BirthDate=sdf.parse(request.getParameter("txtBirthDate"));

                    java.sql.Date sqlBirthDate = new java.sql.Date(BirthDate.getTime());


                    author.setFirstName(request.getParameter("txtFirstName"));
                    author.setLastName(request.getParameter("txtLastName"));
                    author.setBirthDate(sqlBirthDate);
                    author.setBiography(request.getParameter("txtBiography"));
                    service.Add(author);

                    System.out.println(author);

                    response.sendRedirect("authors.jsp");
                }
            %>
            
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
