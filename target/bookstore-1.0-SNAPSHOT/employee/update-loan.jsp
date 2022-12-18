<%@include file="authorization.jsp" %>
<%@ page import="BusinessLayer.LoanService" %>
<%@ page import="DataAccess.Entities.Loan" %>
<%
    int ID=Integer.parseInt(request.getParameter("ID"));
    LoanService service = new LoanService();

    Loan loan = new Loan();
    loan=service.getByID(ID);

    service.Update(loan);
    response.sendRedirect("loans.jsp");

%>