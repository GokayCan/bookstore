<%-- 
    Document   : add-book
    Created on : 5 Ara 2022, 17:23:35
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
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
            <form action="EmployeeBookAdd" method="post" enctype="multipart/form-data">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-center text-header">Kitap Ekle</h2>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kitap Adı</label>
                            <input type="text" class="form-control" name="txtName">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kitap Konusu</label>
                            <textarea class="form-control" name="txtSubject"></textarea>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kitap Stok Miktarı</label>
                            <input type="text" class="form-control" name="txtStock">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kitap Yayım Tarihi</label>
                            <input type="date" class="form-control" name="txtPublishDate">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kitap Yayınevi</label>
                            <select class="form-control form-select" name="slcPublisher">
                                <option value="1">Martı</option>
                                <option value="2">Epsilon</option>
                                <option value="3">YapıKredi</option>
                                <option value="4">iŞ Bankası</option>
                            </select>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kitap Sayfa Sayısı</label>
                            <input type="text" class="form-control" name="txtPageNumber">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kitap Baskı Sayısı</label>
                            <input type="text" class="form-control" name="txtPrintCount">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label for="exampleInputFile" class="form-label">Kitap Kapak</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="exampleInputFile" name="txtImage">
                                <label class="custom-file-label" for="exampleInputFile" >Kapak Fotoğrafı Seç</label>
                            </div>
                        </div>
                    </div>
                    <div class="card-footer">
                        <div style="display:flex;justify-content: end;">
                            <button type="submit" name="save" class="btn btn-success"><i class="fas fa-check"></i> Kaydet</button>
                        </div>
                    </div>
                </div>
            </form>
            
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
