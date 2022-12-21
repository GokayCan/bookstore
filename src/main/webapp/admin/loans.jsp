<%-- 
    Document   : loans
    Created on : 21 Ara 2022, 01:00:32
    Author     : sacag
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
                        
                        <div class="d-flex justify-content-end">
                        </div>
                        <table class="table table-bordered table-hover text-center" id="myTable">
                            <thead>
                            <th scope="col">Ödünç Alan Kullanıcı</th>
                            <th scope="col">Ödünç Veren Çalışan</th>
                            <th scope="col">Ödünç Verilen Kitap</th>
                            <th scope="col">Ödünç Alma Tarihi</th>
                            <th scope="col">Son Tarih Tarihi</th>
                            <th scope="col">İade Tarihi</th>
                            <th scope="col">İade Edildi Mi?</th>
                            
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
