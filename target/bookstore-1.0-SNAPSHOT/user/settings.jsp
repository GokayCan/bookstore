<%-- 
    Document   : settings
    Created on : 21 Ara 2022, 01:49:24
    Author     : user
--%>

<%@include file="authorization.jsp" %>
<%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="header.jsp" %>
    <body class="sb-nav-fixed">
        <script>
    function Validate(){
        let txtFirstName = document.forms["form"]["txtFirstName"].value;
        let txtLastName = document.forms["form"]["txtLastName"].value;
        let txtEmail = document.forms["form"]["txtEmail"].value;
        let txtPassword = document.forms["form"]["txtPassword"].value;
        let txtPhoneNumber = document.forms["form"]["txtPhoneNumber"].value;
        let txtAddress = document.forms["form"]["txtAddress"].value;
        let txtBirthDate = document.forms["form"]["txtBirthDate"].value;
        //let txtImage = document.forms["form"]["txtImage"].value;
        if (txtFirstName === "" || txtLastName === "" || txtEmail === "" || txtPassword === "" || txtPhoneNumber === "" || txtAddress === "" || txtBirthDate === ""){
            alert("Her Kutucuğu Doldurun");
            return false;
        }
        return true;
    }
</script>
        <%@ include file="navbar.jsp" %>
    <div id="layoutSidenav">
        <%@ include file="sidebar.jsp" %>
        <div id="layoutSidenav_content">

            <form action="UMyUpdate" method="post" enctype="multipart/form-data" name="form" onsubmit="return Validate()">
                <div class="m-2">
                    <%                        
                        int ID = Integer.parseInt(request.getParameter("ID"));

                        UserService service = new UserService();
                        User user = new User();

                        user = service.getByID(ID);

                    %>
                    <div class="card">
                        <div class="card-body">
                            <div class="row col-12">
                                <div class="col-4">
                                    <img class="img-fluid" src="../assets/<%=user.getImageUrl()%>" style="width:300px;height: 400px;border-radius: 10px;"></img>
                                </div>
                                <div class="col-8">
                                    <div class="form-group mb-2">
                                        <label class="form-label">Adım</label>
                                        <input type="hidden" name="txtID" value="<%=user.getID()%>">
                                            <input type="text" class="form-control" name="txtFirstName" value="<%=user.getFirstName()%>">

                                    </div>
                                    <div class="form-group mb-2">
                                        <label class="form-label">Soyadım</label>
                                        <input type="text" class="form-control" name="txtLastName" value="<%=user.getLastName()%>">
                                    </div>
                                    <div class="form-group mb-2">
                                        <label class="form-label">Doğum Tarihim</label>
                                        <input type="date" class="form-control" name="txtBirthDate" value="<%=user.getBirthDate()%>">
                                    </div>
                                    <div class="form-group mb-2">
                                        <label class="form-label">Mail Adresim</label>
                                        <input type="email" class="form-control" name="txtEmail" value="<%=user.getEmail()%>">
                                    </div>
                                    <div class="form-group mb-2">
                                        <label class="form-label">Şifrem</label>
                                        <input type="password" class="form-control" name="txtPassword" value="<%=user.getPassword()%>">
                                    </div>
                                    <div class="form-group mb-2">
                                        <label class="form-label">Telefon Numaram</label>
                                        <input type="text" class="form-control" name="txtPhoneNumber" value="<%=user.getPhoneNumber()%>">
                                    </div>
                                    <div class="form-group mb-2">
                                        <label class="form-label">Adresim</label>
                                        <textarea class="form-control" name="txtAddress"><%=user.getAddress()%></textarea>
                                    </div>
                                    <div class="form-group mb-2">
                                        <label class="form-label">Şehirim</label>
                                        <select class="form-control form-select" name="slcCity">
                                            <%
                                                CityService cityservice = new CityService();
                                                ArrayList<City> cities = new ArrayList<City>();
                                                cities=cityservice.List();
                                                for(int i=0;i<cities.size();i++){
                                                if(cities.get(i).getID() == user.getCityID()){%>
                                                    <option selected value="<%=cities.get(i).getID()%>"><%=cities.get(i).getName()%></option>
                                                <%}
                                                else{%>
                                                    <option value="<%=cities.get(i).getID()%>"><%=cities.get(i).getName()%></option>
                                                <%}       
                                                }%>
                                            %>      
                                    </select>
                                    </div>
                                    <div class="form-group mb-2">
                                        <label for="exampleInputFile" class="form-label">Fotoğrafımı Güncelle</label>
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="exampleInputFile" name="txtImage">
                                                <label class="custom-file-label" for="exampleInputFile" >Profil Fotoğrafı Seç</label>
                                        </div>
                                    </div>
                                    </div>
                                    </div>
                                    </div>
                                    <div class="card-footer">
                                        <div style="display:flex;justify-content: end;">
                                            <button type="submit" name="save" class="btn btn-success"><i class="fas fa-check"></i> Kaydet</button>
                                        </div>
                                    </div>
                                    </div>
                                    </div>
                                    </form>
                                    <%@ include file="footer.jsp" %>
                                    </div>
                                    </div>
                                    <%@ include file="script.jsp" %>

                                    </body>
                                    </html>

