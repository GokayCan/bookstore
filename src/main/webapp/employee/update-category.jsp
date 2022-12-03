<%-- 
    Document   : update-category
    Created on : 3 Ara 2022, 00:38:27
    Author     : Bahadır
--%>

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
            <div class="card">
                <div class="card-header">
                    <h2 class="text-center text-header">Kategori Güncelle</h2>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <label class="form-label">Kategori Adı</label>
                        <input type="text" class="form-control" name="txtName">
                    </div>
                </div>
                <div class="card-footer">
                    <div style="display: flex;justify-content: end;">
                        <button class="btn btn-success"><i class="ti-check"></i> Kaydet</button>
                    </div>
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
