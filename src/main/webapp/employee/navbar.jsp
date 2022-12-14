<%-- 
    Document   : navbar
    Created on : 3 Ara 2022, 00:04:03
    Author     : Bahadır
--%>

<%@page import="BusinessLayer.*"%>
<%@page import="DataAccess.Entities.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
    
    <%
        Employee emp=new Employee();
        EmployeeService employeeService=new EmployeeService();
        String employee_id = "";
        
        if (session.getAttribute("authorization") == "employee"){
            Cookie cookiee;
            Cookie[] cookiess;
            cookiess = request.getCookies();
            if (cookiess != null){
                for (int i = 0; i < cookiess.length; i++) {
                cookiee = cookiess[i];
                    if (cookiee.getName().equals("employeeid")) {
                        employee_id = cookiee.getValue();
                        break;
                    }
                }       
            }
            emp=employeeService.getByID(Integer.parseInt(employee_id));
        }   
    %>
    
    <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
      <a class="navbar-brand brand-logo mr-5" href="index.jsp">BookStore</a>
      <a class="navbar-brand brand-logo-mini" href="index.jsp"><img src="images/logo-mini.svg" alt="logo"/></a>
    </div>
    <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
      <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
        <span class="icon-menu"></span>
      </button>
      <ul class="navbar-nav mr-lg-2">
        <li class="nav-item nav-search d-none d-lg-block">
          <div class="input-group">
            <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
              <span class="input-group-text" id="search">
                <i class="icon-search"></i>
              </span>
            </div>
            <input type="text" class="form-control" id="navbar-search-input" placeholder="Ara..." aria-label="search" aria-describedby="search">
          </div>
        </li>
      </ul>
      <ul class="navbar-nav navbar-nav-right">
        <li class="nav-item nav-profile dropdown">
          <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
            <img src="../assets/<%=emp.getDocument()%>" alt="profile"/>
          </a>
          <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
            <a class="dropdown-item" href="settings.jsp?ID=<%=emp.getID()%>">
              <i class="ti-settings text-primary"></i>
              Ayarlar
            </a>
            <a class="dropdown-item" href="logout.jsp">
              <i class="ti-power-off text-primary"></i>
              Çıkış Yap
            </a>
          </div>
        </li>
        <li class="nav-item nav-settings d-none d-lg-flex">
          <a class="nav-link" href="#">
            <i class="icon-ellipsis"></i>
          </a>
        </li>
      </ul>
      <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
        <span class="icon-menu"></span>
      </button>
    </div>
</nav>

<div class="theme-setting-wrapper">
    <div id="settings-trigger"><i class="ti-settings"></i></div>
    <div id="theme-settings" class="settings-panel">
      <i class="settings-close ti-close"></i>
      <p class="settings-heading">SIDEBAR SKINS</p>
      <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
      <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
      <p class="settings-heading mt-2">HEADER SKINS</p>
      <div class="color-tiles mx-0 px-4">
        <div class="tiles success"></div>
        <div class="tiles warning"></div>
        <div class="tiles danger"></div>
        <div class="tiles info"></div>
        <div class="tiles dark"></div>
        <div class="tiles default"></div>
      </div>
    </div>
</div>
