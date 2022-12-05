<%-- 
    Document   : loans
    Created on : 6 Dec 2022, 00:08:24
    Author     : mavia
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DataAccess.Entities.Loan"%>
<%@page import="java.util.ArrayList"%>
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
                    <table class="table table-bordered table-hover text-center">
                        <thead>
                        <th scope="col">ID</th>
                        <th scope="col">Ödünç Alan Kullanıcı</th>
                        <th scope="col">Ödünç Veren Çalışan</th>
                        <th scope="col">Ödünç Verilen Kitap</th>
                        <th scope="col">Ödünç Alma Tarihi</th>
                        <th scope="col">Vadesinin Bitiş Tarihi</th>
                        <th scope="col">Teslim Tarihi</th>                    
                        <th scope="col"></th>
                        <th scope="col"></th>
                    </thead>
                    <tbody>
                        <%
                            LoanService service = new LoanService();
                            ArrayList<Loan> loans = new ArrayList<Loan>();
                            loans = service.List();
                            
                            for(int i=0;i<loans.size();i++){
                                %>

                                <tr>
                                    <td><%=loans.get(i).getID()%></td>
                                    <td><%=loans.get(i).getUser()%></td>
                                    <td><%=loans.get(i).getEmployee()%></td>
                                    <td><%=loans.get(i).getBook()%></td>
                                    <td><%=loans.get(i).getLoanDate()%></td>
                                    <td><%=loans.get(i).getMaxReturnDate()%></td>
                                    <%
                                        if (loans.get(i).getIsEnd() == false){%>
                                            <td>Teslim Edilmedi</td>
                                        <%}
                                        else{%>
                                            <%=loans.get(i).getMaxReturnDate()%>
                                        <%}%>
                                    <td>
                                        <a href="update-loan.jsp?ID=<%=loans.get(i).getID()%>" class="btn btn-warning"><i class="far fa-edit"></i> Güncelle</a>
                                    </td>
                                    <td>
                                        <a href="delete-loan.jsp?ID=<%=loans.get(i).getID()%>" class="btn btn-danger"><i class="far fa-trash-alt"></i> Sil</a>
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

