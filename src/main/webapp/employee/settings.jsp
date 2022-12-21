<%-- 
    Document   : settings
    Created on : 21 Ara 2022, 23:45:04
    Author     : Bahadır
--%>

<%@include file="authorization.jsp" %>
<%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
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

                    <%                int ID = Integer.parseInt(request.getParameter("ID"));

                        EmployeeService service = new EmployeeService();
                        Employee employee = new Employee();

                        employee = service.getByID(ID);

                    %>

                    <form action="EMyUpdate" method="post" enctype="multipart/form-data" name="form">
                        <div class="card">
                            <div class="card-header">
                                <h2 class="text-header text-center">Profilimi Güncelle</h2>
                            </div>
                            <div class="card-body">
                                <div class="form-group mb-2">
                                    <label class="form-label">Adım</label>
                                    <input type="hidden" name="txtID" value="<%=employee.getID()%>">
                                        <input type="text" class="form-control" name="txtFirstName" value="<%=employee.getFirstName()%>">
                                            </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="form-group mb-2">
                                                    <label class="form-label">Soyadım</label>
                                                    <input type="text" class="form-control" name="txtLastName" value="<%=employee.getLastName()%>">
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="form-group mb-2">
                                                    <label class="form-label">Kullanıcı Adım</label>
                                                    <input type="text" class="form-control" name="txtEmail" value="<%=employee.getTCNo()%>">
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="form-group mb-2">
                                                    <label class="form-label">Şifrem</label>
                                                    <input type="text" class="form-control" name="txtPassword" value="<%=employee.getPassword()%>">
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <div class="form-group mb-2">
                                                    <label for="exampleInputFile" class="form-label">Fotoğrafımı Güncelle</label>
                                                    <div class="custom-file">
                                                        <input type="file" class="custom-file-input" id="exampleInputFile" name="txtImage">
                                                            <label class="custom-file-label" for="exampleInputFile" >Profil Fotoğrafı Seç</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="card-footer">
                                                <div style="display:flex;justify-content: end;">
                                                    <button type="submit" name="save" class="btn btn-success"><i class="fas fa-check"></i> Kaydet</button>
                                                </div>
                                            </div>
                                            </div>
                                            </form>
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