<%-- 
    Document   : author-list
    Created on : 12 Ara 2022, 10:24:03
    Author     : Bahadır
--%>

<%@page import="DataAccess.Entities.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card mb-4">
    <div class="card-header">Yazarlar</div>
    <div class="card-body">
        <div class="row">
            <div class="col-sm-12">
                <ul class="list-unstyled mb-0">

                    <%
                        AuthorService authorService = new AuthorService();
                        ArrayList<Author> authors = new ArrayList<Author>();
                        authors = authorService.List();

                        for (int i = 0; i < authors.size(); i++) {

                    %>

                    <li><a href="#!"><%=authors.get(i).getFirstName()%>  <%=authors.get(i).getLastName()%></a></li>

                    <%
                        }

                    %>


                </ul>
            </div>
        </div>
    </div>
</div>
