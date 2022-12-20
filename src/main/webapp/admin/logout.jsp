<%-- 
    Document   : logout
    Created on : 19 Ara 2022, 10:42:46
    Author     : safag
--%>

<%
    session.removeAttribute("authorization");
    response.sendRedirect("login.jsp");
%>
