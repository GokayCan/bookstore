<%-- 
    Document   : add-loan
    Created on : 6 Dec 2022, 00:38:29
    Author     : mavia
--%>

<%@page import="BusinessLayer.UserService"%>
<%@page import="DataAccess.Entities.Loan"%>
<%@include file="authorization.jsp" %>
<%@page import="BusinessLayer.LoanService"%>
<%@page import="DataAccess.Entities.Book"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.BookService"%>
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
            
            <form method="post" action="#" name="form">
                <div class="card">
                    <div class="card-header">
                        <h2 class="text-center text-header">Verilen Kitap Ekle</h2>
                    </div>
                    
                <div class="card-body">
                    <div class="form-group mb-2">
                        
                        <div class="form-group">
                            <label class="form-label">Kullanıcı e-postası</label>
                            <input type="text" class="form-control" name="txtEmail">
                        </div>
                        
                        <div class="form-group">
                            <label class="form-label">Kitap Adı</label>
                            <input type="text" class="form-control" name="txtEmail" onkeyup="showhint()">
                        </div>
                        
                        <label class="form-label">Kitaplar</label>
                        <select class="form-control form-select" name="slcBook">
                            <option value="0" selected>Kitap Seçin</option>
                            <%
                                BookService bookservice = new BookService();
                                ArrayList<Book> books = bookservice.getOnlyId_Name();
                                for(int i = 0;i < books.size() ;i++){%>
                                    <option value="<%=books.get(i).getID()%>"><%=books.get(i).getName()%></option>
                                <%}
                            %>
                        </select>

                        <div class="card-footer">
                        <div style="display: flex;justify-content: end;">
                            <button type="submit" class="btn btn-success" name="save"><i class="ti-check"></i> Kaydet</button>
                        </div>
                    
                    </div>
                    </div>
                </div>
                </div>
            </form>
            
            <%
                if (request.getParameter("save") != null){
                    LoanService loanservice = new LoanService();
                    UserService userservice = new UserService();
                    Loan loan = new Loan();
                    String  employeeid = session.getAttribute("employeeid").toString();
                    int userid = userservice.getByEmail(request.getParameter("txtEmail"));
                    
                    
                    
                    System.out.println(userid + " " + employeeid);
                    loan.setUserID(userid);
                    loan.setBookID(Integer.parseInt(request.getParameter("slcBook")));
                    loan.setEmployeeID(Integer.parseInt(employeeid));
                    loan.setIsEnd(false);
                    loanservice.Add(loan);
                    //kullanıcının epostasına göre idsini getir çünkü zaten eposta eşsiz değer
                    //employeeid'yi cookiede tutki loan'ın employeeid'sine gitsin
                    //kitap seçimi için aramalı bir algoritma yaz
                    //tarihler otomatik atanacak
                    response.sendRedirect("loans.jsp");
                }
            %>
            
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
