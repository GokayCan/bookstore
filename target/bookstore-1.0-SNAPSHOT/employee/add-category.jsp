<%-- 
    Document   : add-category
    Created on : 3 Ara 2022, 00:38:09
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page import="BusinessLayer.*"%>
<%@page import="DataAccess.Entities.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="tr">

<%@ include file="header.jsp" %>
<body>
    <script>
    function Validate(){
        let txtName = document.forms["form"]["txtName"].value;
        if (txtName === ""){
            alert("Her Kutucuğu Doldurun");
            return false;
        }
        return true;
    }
</script>
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
            
            <form method="post" action="#" name="form" onsubmit="return Validate();">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-center text-header">Kategori Ekle</h2>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label class="form-label">Kategori Adı</label>
                            <input type="text" class="form-control" name="txtName">
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
                
                Category category=new Category();
                CategoryService service=new CategoryService();
                
                String txtName = new String(request.getParameter("txtName").getBytes("ISO-8859-9"), "UTF-8");
                
                category.setName(txtName);
                service.Add(category);
                
                response.sendRedirect("categories.jsp");
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
