<%
    if (session.getAttribute("authorization") != "admin"){
        response.sendRedirect("login.jsp");
    }
%>
