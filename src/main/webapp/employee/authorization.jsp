<%
    if (session.getAttribute("authorization") != "employee"){
        response.sendRedirect("login.jsp");
    }
%>
