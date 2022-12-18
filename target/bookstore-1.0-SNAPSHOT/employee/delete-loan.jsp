<%@ page import="BusinessLayer.LoanService" %>
<%@include file="authorization.jsp" %>
<%
    int ID=Integer.parseInt(request.getParameter("ID"));
    LoanService service = new LoanService();
    service.Delete(ID);
    response.sendRedirect("loans.jsp");
%>