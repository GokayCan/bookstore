<%-- 
    Document   : login
    Created on : 8 Ara 2022, 17:29:58
    Author     : Bahadır
--%>

<%@page import="DataAccess.Entities.User"%>
<%@page import="BusinessLayer.UserService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="header.jsp" %>
</head>
<body class="bg-primary">
<div id="layoutAuthentication">
    <div id="layoutAuthentication_content">
        <main>
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-5">
                        <div class="card shadow-lg border-0 rounded-lg mt-5">
                            <div class="card-header"><h3 class="text-center font-weight-light my-4">Giriş Yap</h3></div>
                            <div class="card-body">
                                <form>
                                    <div class="form-group"><label class="small mb-1" for="inputEmailAddress">Email Giriniz</label><input class="form-control py-4" id="inputEmailAddress" type="email" name="email" placeholder="E-Mail Giriniz" /></div>
                                    <div class="form-group"><label class="small mb-1" for="inputPassword">Şifre Giriniz</label><input class="form-control py-4" id="inputPassword" type="password" name="password" placeholder="Şifre Giriniz" /></div>
                                    <div class="form-group">
                                        <div class="custom-control custom-checkbox"><input class="custom-control-input" id="rememberPasswordCheck" type="checkbox" /><label class="custom-control-label" for="rememberPasswordCheck">Şifremi Hatırla</label></div>
                                    </div>
                                    <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0"><input type="submit" name="login" class="btn btn-primary" value="Giriş Yap"> </div>
                                </form>
                            </div>
                            <%
                                if (request.getParameter("login") != null) {
                                    UserService service = new UserService();
                                    String email = request.getParameter("email");
                                    String password = request.getParameter("password");
                                    User user = service.getByEmail(email, password);

                                    if (user != null) {
                                        session.setAttribute("employeeid", user.getID());
                                        session.setAttribute("authorization", "user");

                                        Cookie tc = new Cookie("tcno", user.getEmail());
                                        Cookie pass = new Cookie("password", user.getPassword());
                                        tc.setMaxAge(60 * 60 * 24);
                                        pass.setMaxAge(60 * 60 * 24);
                                        response.addCookie(tc);
                                        response.addCookie(pass);

                                        response.sendRedirect("index.jsp");
                                            } else {%>
                            <script>alert("Hesap Doğru Değil");</script>
                            <%}
                                }
                            %>
                            <div class="card-footer text-center">
                                <div class="small"><a href="register.jsp">Henüz hesabınız yok mu? Hesap oluştur!</a></div>
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
