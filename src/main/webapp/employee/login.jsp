<%-- 
    Document   : login.jsp
    Created on : 5 Dec 2022, 22:53:32
    Author     : mavia
--%>
<%
    Cookie cookie;
    Cookie[] cookies;
    cookies = request.getCookies();
    String inputtcno = "";
    String inputpassword = "";
    for (int i = 0; i < cookies.length; i++) {
        cookie = cookies[i];
        if (cookie.getName().equals("tcno")) {
            inputtcno = cookie.getValue();
        }
        if (cookie.getName().equals("password")) {
            inputpassword = cookie.getValue();
        }
    }
%>
<%@page import="DataAccess.Entities.Employee"%>
<%@page import="BusinessLayer.EmployeeService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="header.jsp" %>
    <body>

    <div class="container-scroller">
        <div class="container-fluid page-body-wrapper full-page-wrapper">
            <div class="content-wrapper d-flex align-items-center auth px-0">
                <div class="row w-100 mx-0">
                    <div class="col-lg-4 mx-auto">
                        <div class="auth-form-light text-left py-5 px-4 px-sm-5">
                            <h4>Hoş Geldiniz!</h4>
                            <h6 class="font-weight-light">Devam etmek için lütfen giriş yapınız.</h6>
                            <form class="pt-3">
                                <div class="form-group">
                                    <input type="text" class="form-control form-control-lg" name="tc" id="exampleInputEmail1" value="<%= inputtcno %>" placeholder="TC No Girin...">
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control form-control-lg" name="password" id="exampleInputPassword1" value="<%= inputpassword %>" placeholder="Şifre Girin...">
                                </div>
                                <div class="mt-3">
                                    <input type="submit" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" value="Giriş Yap" name="login">
                                </div>
                                
                                
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%
        if (request.getParameter("login") != null) {
            EmployeeService service = new EmployeeService();
            String tcno = request.getParameter("tc");
            String password = request.getParameter("password");
            Employee employee = service.AccountExist(tcno, password);

            if (employee != null) {
                //session.setAttribute("employeeid", employee.getID());
                session.setAttribute("authorization", "employee");
                String empid = String.valueOf(employee.getID());
                Cookie employeeid = new Cookie("employeeid", empid);
                Cookie tc = new Cookie("tcno", employee.getTCNo());
                Cookie pass = new Cookie("password", employee.getPassword());
                employeeid.setMaxAge(60 * 60 * 24);
                tc.setMaxAge(60 * 60 * 24);
                pass.setMaxAge(60 * 60 * 24);
                response.addCookie(employeeid);
                response.addCookie(tc);
                response.addCookie(pass);

                response.sendRedirect("index.jsp");
            } else {%>
    <script>alert("Hesap Doğru Değil");</script>
    <%}
        }
    %>
    <%@ include file="script.jsp" %>
</body>
</html>
