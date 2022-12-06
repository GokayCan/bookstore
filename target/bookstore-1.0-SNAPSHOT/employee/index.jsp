<%-- 
    Document   : index
    Created on : 28 Kas 2022, 23:05:40
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
            <%=session.getAttribute("authorization") + "<br>"%>
            
            <%
                Cookie cookie = null;
                Cookie[] cookies = null;
                cookies = request.getCookies();
                if( cookies != null ) {
                    for (int i = 0; i < cookies.length; i++) {
                        cookie = cookies[i];
                        out.print("Name : " + cookie.getName() + ", ");
                        out.print("Value: " + cookie.getValue()+" <br/>");
                    }
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


