<%
    response.setHeader("Cache-Control","no-cache");
    response.setHeader("Cache-Control","no-store");
    response.setHeader("Pragma","no-cache");
    response.setDateHeader ("Expires", 0);

    /*if (session.getAttribute("authorization") != "employee"){
        response.sendRedirect("login.jsp");
    }*/
%>
