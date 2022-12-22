<%-- 
    Document   : loans
    Created on : 6 Dec 2022, 00:08:24
    Author     : mavia
--%>
<%@include file="authorization.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="DataAccess.Entities.Loan" %>
<%@page import="java.util.ArrayList" %>
<%@page import="BusinessLayer.LoanService" %>
<!doctype html>
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
                <div class="card mt-2">
                    <div class="card-header">
                        <h2 class="text-header text-center">Verilen Kitaplar</h2>
                    </div>
                    <div class="card-body">
                        <a href="add-loan.jsp" class="btn btn-primary mt-2 mb-2"><i class="icon-plus"></i> Yeni Ekle</a>
                        <input type="text" class="form-control-sm" id="myInput" onkeyup="myFunction2();" placeholder="Kullanıcı Adını Girin">
                        <div class="d-flex justify-content-end">
                            <input class="form-check-dark" type="checkbox" id="filter" onchange="myfilter();">
                            <label class="form-check-label" style="color:blue;font-style: oblique">Filtrele</label>
                        </div>
                        <table class="table table-bordered table-hover text-center" id="myTable">
                            <thead>
                            <th scope="col">Alan Kullanıcı</th>
                            <th scope="col">Çalışan</th>
                            <th scope="col">Kitap</th>
                            <th scope="col">Alma Tarihi</th>
                            <th scope="col">Son Tarih</th>
                            <th scope="col">İade Tarihi</th>
                            <th scope="col">İade Edildi Mi</th>
                            <th scope="col"></th>
                            <th scope="col"></th>
                            </thead>
                            <tbody>
                            <%
                                LoanService service = new LoanService();
                                ArrayList<Loan> loans;
                                loans = service.List();

                                for (int i = 0; i < loans.size(); i++) {
                            %>

                            <tr>
                                <td><%=loans.get(i).getUser()%></td>
                                <td><%=loans.get(i).getEmployee()%></td>
                                <td><%=loans.get(i).getBook()%></td>
                                <td><%=loans.get(i).getLoanDate()%></td>
                                <td><%=loans.get(i).getMaxReturnDate()%></td>                         
                                <%
                                    if (loans.get(i).getReturnedDate() != null) {%>
                                        <td><%=loans.get(i).getLoanDate()%></td> 
                                <%} 
                                    else {%>
                                        <td>Boş</td>
                                <%}%>
                                <%
                                    if (loans.get(i).getIsEnd()) {%>
                                <td>Evet</td>
                                <%} else {%>
                                <td>Hayır</td>
                                <%
                                    }
                                %>
                                <td>
                                    <a href="update-loan.jsp?ID=<%=loans.get(i).getID()%>" class="btn btn-warning" onclick="return confirm('Güncellemek İstediğinizden Emin misin?')"><i
                                            class="far fa-edit"></i> Güncelle</a>
                                </td>
                                <td>
                                    <a href="delete-loan.jsp?ID=<%=loans.get(i).getID()%>" class="btn btn-danger" onclick="return confirm('Emin misin?')"><i
                                            class="far fa-trash-alt"></i> Sil</a>
                                </td>
                            </tr>
                            <%
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                </div>
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

