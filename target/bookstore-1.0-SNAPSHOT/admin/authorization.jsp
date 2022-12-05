<%
    if (session.getAttribute("authorization") != "admin"){
        response.sendRedirect("../employee/login.jsp");
    }
%>
