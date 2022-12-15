<%
    if (session.getAttribute("authorization") != "user"){
        response.sendRedirect("login.jsp");
    }
%>
