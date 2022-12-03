<%-- 
    Document   : update-translator
    Created on : 3 Ara 2022, 23:41:51
    Author     : Bahadır
--%>

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
            
           <%
                int ID=Integer.parseInt(request.getParameter("ID"));

                TranslatorService service=new TranslatorService();
                Translator translator=new Translator();

                translator=service.getByID(ID);
        
            %>
            
            <form method="post" action="#">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-center text-header">Çevirmen Güncelle</h2>
                    </div>
                    <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Çevirmen Adı</label>
                            <input type="text" class="form-control" name="txtFirstName" value="<%=translator.getFirstName()%>">
                        </div>
                        <div class="form-group mb-2">
                            <label class="form-label">Çevirmen Soyadı</label>
                            <input type="text" class="form-control" name="txtLastName" value="<%=translator.getLastName()%>">
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

                    translator.setFirstName(request.getParameter("txtFirstName"));
                    translator.setLastName(request.getParameter("txtLastName"));
                    service.Update(translator);

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
