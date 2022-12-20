<%-- 
    Document   : update-author
    Created on : 3 Ara 2022, 23:42:22
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
<script>
    function Validate(){
        let txtFirstName = document.forms["form"]["txtFirstName"].value;
        let txtLastName = document.forms["form"]["txtLastName"].value;
        let txtBirthDate = document.forms["form"]["txtBirthDate"].value;
        let txtBiography = document.forms["form"]["txtBiography"].value;
        if (txtFirstName === "" || txtLastName === "" || txtBirthDate === "" || txtBiography === ""){
            alert("Her Kutucuğu Doldurun");
            return false;
        }
        return true;
    }
</script>
  <div class="container-scroller">
    <!-- Navbar-->
    <%@ include file="navbar.jsp" %>
    <div class="container-fluid page-body-wrapper">
      <!-- Sidebar -->
      <%@ include file="sidebar.jsp" %>
      <div class="main-panel">
        <div class="content-wrapper">
            
           <%
                int ID=Integer.parseInt(request.getParameter("ID"));

                AuthorService service=new AuthorService();
                Author author=new Author();

                author=service.getByID(ID);
        
            %>
            
            <form method="post" action="#" name="form" onsubmit="return Validate();">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-center text-header">Yazar Güncelle</h2>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Yazar Adı</label>
                            <input type="text" class="form-control" name="txtFirstName" value="<%=author.getFirstName()%>">
                        </div>
                        <div class="form-group mb-2">
                            <label class="form-label">Yazar Soyadı</label>
                            <input type="text" class="form-control" name="txtLastName" value="<%=author.getLastName()%>">
                        </div>
                        <div class="form-group mb-2">
                            <label class="form-label">Yazar Doğum Tarihi</label>
                            <input type="text" class="form-control" disabled name="txtBirthDate" value="<%=author.getBirthDate()%>">
                            <input type="date" class="form-control" name="txtBirthDate">
                        </div>
                            <div class="form-group mb-2">
                            <label class="form-label">Yazar Biyografisi</label>
                            <textarea class="form-control" name="txtBiography"><%=author.getBiography()%></textarea>
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
                    
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                
                    java.util.Date BirthDate=sdf.parse(request.getParameter("txtBirthDate"));
                
                    java.sql.Date sqlBirthDate = new java.sql.Date(BirthDate.getTime());

                    String txtFirstName = new String(request.getParameter("txtFirstName").getBytes("ISO-8859-9"), "UTF-8");
                    String txtLastName = new String(request.getParameter("txtLastName").getBytes("ISO-8859-9"), "UTF-8");
                    String txtBiography = new String(request.getParameter("txtBiography").getBytes("ISO-8859-9"), "UTF-8");
                
                    author.setFirstName(txtFirstName);
                    author.setLastName(txtLastName);
                    author.setBiography(txtBiography);
                    author.setBirthDate(sqlBirthDate);
                    service.Update(author);

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
