<%@include file="authorization.jsp" %>
<%@ page import="BusinessLayer.LoanService" %>
<%
    int ID=Integer.parseInt(request.getParameter("ID"));
    LoanService service = new LoanService();
    service.Delete(ID);
    response.sendRedirect("loans.jsp");
%>