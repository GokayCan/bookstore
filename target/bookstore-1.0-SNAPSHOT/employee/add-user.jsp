<%-- 
    Document   : add-user
    Created on : 7 Ara 2022, 22:56:55
    Author     : Bahadır
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="tr">

<%@ include file="header.jsp" %>
<body>
    <script>
    function Validate(){
        let txtFirstName = document.forms["form"]["txtFirstName"].value;
        let txtLastName = document.forms["form"]["txtLastName"].value;
        let txtEmail = document.forms["form"]["txtEmail"].value;
        let txtPassword = document.forms["form"]["txtPassword"].value;
        let txtPhoneNumber = document.forms["form"]["txtPhoneNumber"].value;
        let txtAddress = document.forms["form"]["txtAddress"].value;
        let txtBirthDate = document.forms["form"]["txtBirthDate"].value;
        let txtImage = document.forms["form"]["txtImage"].value;
        
        if (txtFirstName === "" || txtLastName === "" || txtEmail === "" || txtPassword === "" || txtPhoneNumber === "" || txtAddress === "" || txtBirthDate === "" || txtImage === ""){
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
            
            <form action="UserAdd" method="post" enctype="multipart/form-data" name="form" onsubmit="return Validate();">
                <div class="card">
                    <div class="card-header">
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                              <i class="fas fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                              <i class="fas fa-times"></i>
                            </button>
                      </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kullanıcı Adı</label>
                            <input type="text" class="form-control" name="txtFirstName">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kullanıcı Soyadı</label>
                            <input type="text" class="form-control" name="txtLastName">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kullanıcı Mail Adresi</label>
                            <input type="text" class="form-control" name="txtEmail">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kullanıcı Şifresi</label>
                            <input type="text" class="form-control" name="txtPassword">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kullanıcı Telefon Numarası</label>
                            <input type="text" class="form-control" name="txtPhoneNumber">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kullanıcı Adresi</label>
                            <input type="text" class="form-control" name="txtAddress">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kullanıcı Doğum Tarihi</label>
                            <input type="date" class="form-control" name="txtBirthDate">
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label for="exampleInputFile" class="form-label">Kullanıcı Profil Fotoğrafı</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="exampleInputFile" name="txtImage">
                                <label class="custom-file-label" for="exampleInputFile" >Kullanıcı Profil Fotoğrafı Seç</label>
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
