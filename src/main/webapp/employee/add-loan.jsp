<%-- 
    Document   : add-loan
    Created on : 6 Dec 2022, 00:38:29
    Author     : mavia
--%>
<%@include file="authorization.jsp" %>
<%@page import="BusinessLayer.UserService" %>
<%@page import="DataAccess.Entities.Loan" %>
<%@page import="BusinessLayer.LoanService" %>
<%@page import="DataAccess.Entities.Book" %>
<%@page import="java.util.ArrayList" %>
<%@page import="BusinessLayer.BookService" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="tr">

<%@ include file="header.jsp" %>
<body>
    <script>
    function Validate(){
        let txtEmail = document.forms["form"]["txtEmail"].value;
        let txtBookId = document.forms["form"]["txtBookId"].value;
        if (txtEmail === "" || txtBookId === ""){
            alert("Her Kutucuğu Doldurun");
            return false;
        }
        else if(isNaN(txtBookId)){
            alert("BookID sayısal değer içermelidir");
            return false;
        }
        return true;
    }
</script>
<div class="container-scroller">
    <!-- Navbar-->
    <%@ include file="navbar.jsp" %>
    <div class="container-fluid page-body-wrapper">
        <!-- Sidebar -->
        <%@ include file="sidebar.jsp" %>
        <div class="main-panel">
            <div class="content-wrapper">

                <form method="post" action="#" name="form"  name="form" onsubmit="return Validate();">
                    <div class="card">
                        <div class="card-header">
                            <h2 class="text-center text-header">Kitap Ver</h2>
                        </div>

                        <div class="card-body">
                            <div class="form-group">
                                <label class="form-label">Kullanıcı e-postası</label>
                                <input type="text" class="form-control" name="txtEmail">
                            </div>

                            <input type="text" class="form-control mb-2" id="myInput" onkeyup="myFunction()"
                                   placeholder="Kitap Adını Girerek Arama Yapın..">
                            <input type="text" class="form-control mb-2" name="txtBookId"
                                   placeholder="Kitap Id Giriniz">
                            <table class="table table-bordered table-hover text-center" id="myTable">
                                <thead>
                                <th scope="col">ID</th>
                                <th scope="col">Kitap Adı</th>
                                <th scope="col">Stok Miktarı</th>
                                </thead>
                                <tbody>
                                <%
                                    BookService service = new BookService();
                                    ArrayList<Book> books = service.List();
                                    for (int i = 0; i < books.size(); i++) {
                                %>
                                <tr>
                                    <td><%=books.get(i).getID()%>
                                    </td>
                                    <td><%=books.get(i).getName()%>
                                    </td>
                                    <td><%=books.get(i).getStock()%>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer">
                            <div style="display: flex;justify-content: end;">
                                <button type="submit" class="btn btn-success" name="save"><i class="ti-check"></i>
                                    Kaydet
                                </button>
                            </div>
                        </div>
                    </div>
                </form>
                <%
                    if (request.getParameter("save") != null) {
                        LoanService loanservice = new LoanService();
                        UserService userservice = new UserService();
                        BookService bookservice = new BookService();
                        Loan loan = new Loan();
                        String employeeid = "";
                        Cookie cookie;
                        Cookie[] cookies;
                        cookies = request.getCookies();
                        for (int i = 0; i < cookies.length; i++) {
                            cookie = cookies[i];
                            if (cookie.getName().equals("employeeid")) {
                                employeeid = cookie.getValue();
                                break;
                            }
                        }
                        String txtEmail = new String(request.getParameter("txtEmail").getBytes("ISO-8859-9"), "UTF-8");
                        int userid = userservice.getIDByEmail(txtEmail);
                        String bookid = request.getParameter("txtBookId");
                        boolean result = bookservice.CheckStockAmount(Integer.parseInt(bookid));
                        if (result){
                            loan.setUserID(userid);
                            loan.setBookID(Integer.parseInt(bookid));
                            loan.setEmployeeID(Integer.parseInt(employeeid));
                            loan.setIsEnd(false);
                            loanservice.Add(loan);
                            response.sendRedirect("loans.jsp");
                        }
                        else{%>
                            <script>alert("Stok Miktarı Sıfır Olan Bir Kitabı Seçtiniz");</script>
                        <%}
                    }
                %>
                <!-- footer -->
                <%@ include file="footer.jsp" %>
            </div>
        </div>
    </div>

    <!-- script -->
    <%@ include file="script.jsp" %>

</body>
</html>
