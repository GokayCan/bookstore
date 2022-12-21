<%-- 
    Document   : navbar
    Created on : 3 Ara 2022, 01:21:10
    Author     : Bahadır
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
    
    <%
        int myID;
        String myEmail="";
        Cookie myCookie;
        Cookie[] myCookies;
        myCookies = request.getCookies();
        for (int i = 0; i < myCookies.length; i++) {
            myCookie = myCookies[i];
            if (myCookie.getName().equals("email")) {
                myEmail = myCookie.getValue();
                break;
            }
        }

        UserService userService = new UserService();

        myID=userService.getIDByEmail(myEmail);
    %>
    
    <a class="navbar-brand" href="index.jsp">BookStoreApp</a>
    <button class="btn btn-link btn-sm order-1 order-lg-0" id="sidebarToggle" href="#"><i class="fas fa-bars"></i>
    </button
    ><!-- Navbar Search-->
    <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">

        </div>
    </form>
    <!-- Navbar-->
    <ul class="navbar-nav ml-auto ml-md-0">
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" id="userDropdown" href="#" role="button" data-toggle="dropdown"
               aria-haspopup="true" aria-expanded="false"><i class="fas fa-user fa-fw"></i></a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="settings.jsp?ID=<%=myID%>"><i class="fas fa-cog fa-fw"></i> Ayarlar</a>
                <a class="dropdown-item" href="logout.jsp"><i
                        class="fas fa-power-off fa-fw"></i> Çıkış Yap</a>
            </div>
        </li>
    </ul>
</nav>
