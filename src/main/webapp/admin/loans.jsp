<%-- 
    Document   : loans
    Created on : 25 Ara 2022, 21:51:44
    Author     : user
--%>

<%@page import="DataAccess.Entities.Loan"%>
<%@include file="authorization.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.LoanService" %>
<html>
<!-- header -->
<%@ include file="header.jsp" %>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
  <!-- Navbar -->
    <%@ include file="navbar.jsp" %>
  <!-- Sidebar -->
    <%@ include file="sidebar.jsp" %>
  <!-- Content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
              <h1 class="m-0 text-dark">Verilen Kitap Menüsü</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="index.jsp">Ana Sayfa</a></li>
              <li class="breadcrumb-item active">Verilen Kitap Listesi</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        
        <div class="card">
            <div class="card-header">
                <div class="card-tools">
              </div>
            </div>
                </div>
                <table class="table table-striped table-hover" style="text-align: center;" >
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
        
    </section>
    <!-- /.content -->
  
  
  
  </div>
  <!-- Footer -->
    <%@ include file="footer.jsp" %>
</div>
<!-- Scripts -->
<%@ include file="script.jsp" %>

</body>
</html>
