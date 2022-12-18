<%-- 
    Document   : register
    Created on : 15 Dec 2022, 11:28:16
    Author     : gokay
--%>
<%
    if(session.getAttribute("authorization") == "user"){
        response.sendRedirect("index.jsp");
    }
%>
<%@page import="DataAccess.Entities.User" %>
<%@page import="BusinessLayer.UserService" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<%@ include file="header.jsp" %>
<body class="bg-primary">
<script>
    function Validate(){
        let firstname = document.forms["form"]["firstname"].value;
        let lastname = document.forms["form"]["lastname"].value;
        let email = document.forms["form"]["email"].value;
        let password = document.forms["form"]["password"].value;
        let againpassword = document.forms["form"]["againpassword"].value;
        if (firstname === "" || lastname === "" || email === "" || password === "" || againpassword === ""){
            alert("Her Kutucuğu Doldurun");
            return false;
        }
        else if(password != againpassword){
            alert("Şifre Uyuşmamaktadır");
            return false;
        }
        else{
            return true;
        }
    }
</script>
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header"><h3 class="text-center font-weight-light my-4">Kayıt Ol</h3></div>
                            <div class="card-body">
                                <form method="post" action="#" name="form" onsubmit="return Validate();">
                                    <div class="form-group"><label class="small mb-1" for="inputEmailAddress">Adınızı
                                        Giriniz</label><input class="form-control py-4" type="text" name="firstname"
                                                              placeholder="Ad Giriniz"/>
                                    </div>
                                    <div class="form-group"><label class="small mb-1" for="inputEmailAddress">Soyadınızı
                                        Giriniz</label><input class="form-control py-4" id="inputEmailAddress"
                                                              type="text" name="lastname" placeholder="Soyad Giriniz"/>
                                    </div>
                                    <div class="form-group"><label class="small mb-1" for="inputEmailAddress">Email
                                        Giriniz</label><input class="form-control py-4" id="inputEmailAddress"
                                                              type="email" name="email" placeholder="E-Mail Giriniz"/>
                                    </div>
                                    <div class="form-group"><label class="small mb-1" for="inputPassword">Şifre
                                        Giriniz</label><input class="form-control py-4" id="inputPassword"
                                                              type="password" name="password"
                                                              placeholder="Şifre Giriniz"/></div>

                                    <div class="form-group"><label class="small mb-1" for="inputPassword">Şifre
                                        Giriniz</label><input class="form-control py-4" id="inputPassword1"
                                                              type="password" name="againpassword"
                                                              placeholder="Şifreyi Tekrar Giriniz"/></div>
                                    <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
                                        <input type="submit" name="register" class="btn btn-primary" value="Kayıt Ol">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
    </div>
    <div id="layoutAuthentication_footer">
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; SGB 2022</div>

                </div>
            </div>
        </footer>
    </div>
</div>
<%@ include file="script.jsp" %>
</body>
</html>
<%
    if (request.getParameter("register") != null) {
        UserService service = new UserService();
        boolean result = service.EmailExist(request.getParameter("email"));
        String password = request.getParameter("password");
        if(result){%>
          <script>alert("Bu email için geçerli bir hesap vardır.");</script>
        <%}
        else{
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String email = request.getParameter("email");

            User user = new User();
            user.setFirstName(firstname);
            user.setLastName(lastname);
            user.setEmail(email);
            user.setPassword(password);
            service.Register(user);
            session.setAttribute("authorization", "user");
            Cookie emailcookie = new Cookie("email", email);
            Cookie passwordcookie = new Cookie("password", password);
            emailcookie.setMaxAge(60 * 60 * 24);
            passwordcookie.setMaxAge(60 * 60 * 24);
            response.addCookie(emailcookie);
            response.addCookie(passwordcookie);
            response.sendRedirect("login.jsp");
        }
    }
%>