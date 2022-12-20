<%-- 
    Document   : logout
    Created on : 19 Ara 2022, 10:42:46
    Author     : safag
--%>

<%
    Cookie cookie;
    Cookie[] cookies;
    cookies = request.getCookies();
    for(int i = 0; i < cookies.length; i++) {
        cookie = cookies[i];
        if (cookie.getName().equals("tcno") || cookie.getName().equals("password")) {
            cookie.setValue("");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
    }
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
