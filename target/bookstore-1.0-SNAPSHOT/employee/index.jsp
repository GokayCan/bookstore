<%-- 
    Document   : index
    Created on : 28 Kas 2022, 23:05:40
    Author     : Bahadır
--%>
<%@page import="DataAccess.Entities.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.*"%>
<%@include file="authorization.jsp" %>
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
            
            
            <%
                BookService bookService=new BookService();
                UserService userService=new UserService();
                LoanService loanService=new LoanService();
                
                ArrayList<Book> books=new ArrayList<Book>();
                ArrayList<User> users=new ArrayList<User>();
                ArrayList<Loan> loans=new ArrayList<Loan>();
                
                books=bookService.List();
                users=userService.List();
                loans=loanService.List();
            %>
            
            <div class="col-md-12 mb-4 stretch-card transparent">
                <div class="card card-dark-blue">
                  <div class="card-body">
                    <p class="mb-4">Kitap Sayısı</p>
                    <p class="fs-30 mb-2"><%=books.size()%></p>
                  </div>
                </div>
            </div>
            <div class="col-md-12 mb-4 stretch-card transparent">
                <div class="card card-light-blue">
                  <div class="card-body">
                    <p class="mb-4">Üye Sayısı</p>
                    <p class="fs-30 mb-2"><%=users.size()%></p>
                  </div>
                </div>
            </div>
            <div class="col-md-12 mb-4 stretch-card transparent">
                <div class="card card-light-danger">
                  <div class="card-body">
                    <p class="mb-4">Ödünç Alınan Kitap Sayısı</p>
                    <p class="fs-30 mb-2"><%=loans.size()%></p>
                  </div>
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


