<%-- 
    Document   : add-translator
    Created on : 3 Ara 2022, 23:41:37
    Author     : Bahadır
--%>

<%@page import="BusinessLayer.*"%>
<%@page import="DataAccess.Entities.*"%>
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
                        <h2 class="text-center text-header">Çevirmen Ekle</h2>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Çevirmen Adı</label>
                            <input type="text" class="form-control" name="txtFirstName">
                        </div>
                        <div class="form-group mb-2">
                            <label class="form-label">Çevirmen Soyadı</label>
                            <input type="text" class="form-control" name="txtLastName">
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
                
                Translator translator=new Translator();
                TranslatorService service=new TranslatorService();
                
                translator.setFirstName(request.getParameter("txtFirstName"));
                translator.setLastName(request.getParameter("txtLastName"));
                service.Add(translator);
                
                response.sendRedirect("translators.jsp");
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
