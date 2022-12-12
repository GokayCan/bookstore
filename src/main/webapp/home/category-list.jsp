<%-- 
    Document   : category-list
    Created on : 12 Ara 2022, 10:23:03
    Author     : Bahadır
--%>

<%@page import="DataAccess.Entities.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="card mb-4">
    <div class="card-header">Kitap Kategorileri</div>
    <div class="card-body">
        <div class="row">
            <div class="col-sm-12">
                <ul class="list-unstyled mb-0">

                    <%
                        CategoryService categoryService = new CategoryService();
                        ArrayList<Category> categories = new ArrayList<Category>();
                        categories = categoryService.List();

                        for (int i = 0; i < categories.size(); i++) {

                    %>

                    <li><a href="#!"><%=categories.get(i).getName()%></a></li>

                    <%
                        }

                    %>

                </ul>
            </div>
        </div>
    </div>
</div>
