<%-- 
    Document   : add-publisher
    Created on : 3 Ara 2022, 00:38:17
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
                        <h2 class="text-center text-header">Yayınevi Ekle</h2>
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label class="form-label">Yayınevi Adı</label>
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
                
                Publisher publisher=new Publisher();
                PublisherService service=new PublisherService();
                
                publisher.setName(request.getParameter("txtName"));
                service.Add(publisher);
                
                response.sendRedirect("publishers.jsp");
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
