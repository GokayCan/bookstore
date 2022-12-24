<%-- 
    Document   : index
    Created on : 5 Kas 2022, 00:10:18
    Author     : Bahadır
--%>
<%@page import="DataAccess.Entities.*"%>
<%@page import="java.util.ArrayList"%>
<%@page import="BusinessLayer.*"%>
<%@include file="authorization.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <%@ include file="header.jsp" %>
    <body class="sb-nav-fixed">
        <%@ include file="navbar.jsp" %>
    <div id="layoutSidenav">
        <%@ include file="sidebar.jsp" %>
        <div id="layoutSidenav_content">
            <div class="m-2">

                <%                    
                    myCookies = request.getCookies();
                    if (myCookies != null){
                        for (int i = 0; i < myCookies.length; i++) {
                            myCookie = myCookies[i];
                            if (myCookie.getName().equals("email")) {
                                myEmail = myCookie.getValue();
                                break;
                            }
                        }
                    }


                    myID = userService.getIDByEmail(myEmail);

                    BookService bookService = new BookService();
                    UserService usrservice = new UserService();
                    AuthorService authorService = new AuthorService();
                    CategoryService categoryService = new CategoryService();
                    PublisherService publisherService = new PublisherService();

                    ArrayList<Book> books = new ArrayList<Book>();
                    ArrayList<Book> myBooks = new ArrayList<Book>();
                    ArrayList<Category> categories = new ArrayList<Category>();
                    ArrayList<Author> authors = new ArrayList<Author>();
                    ArrayList<Publisher> publishers = new ArrayList<Publisher>();

                    books = bookService.List();
                    categories = categoryService.List();
                    authors = authorService.List();
                    publishers = publisherService.List();
                    myBooks = usrservice.MyBookList(myID);
                %>

                <div class="card bg-success text-white mb-2">
                    <div class="card-body">Bendeki Kitap Sayısı:<%=myBooks.size()%></div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="mybooks.jsp">Kitaplarım</a>
                        <div class="small text-white"><svg class="svg-inline--fa fa-angle-right fa-w-8" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="angle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512" data-fa-i2svg=""><path fill="currentColor" d="M224.3 273l-136 136c-9.4 9.4-24.6 9.4-33.9 0l-22.6-22.6c-9.4-9.4-9.4-24.6 0-33.9l96.4-96.4-96.4-96.4c-9.4-9.4-9.4-24.6 0-33.9L54.3 103c9.4-9.4 24.6-9.4 33.9 0l136 136c9.5 9.4 9.5 24.6.1 34z"></path></svg><!-- <i class="fas fa-angle-right"></i> --></div>
                    </div>
                </div>
                <div class="card bg-primary text-white mb-2">
                    <div class="card-body">Kitap Sayısı:<%=books.size()%></div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="books.jsp">Kitaplar</a>
                        <div class="small text-white"><svg class="svg-inline--fa fa-angle-right fa-w-8" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="angle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512" data-fa-i2svg=""><path fill="currentColor" d="M224.3 273l-136 136c-9.4 9.4-24.6 9.4-33.9 0l-22.6-22.6c-9.4-9.4-9.4-24.6 0-33.9l96.4-96.4-96.4-96.4c-9.4-9.4-9.4-24.6 0-33.9L54.3 103c9.4-9.4 24.6-9.4 33.9 0l136 136c9.5 9.4 9.5 24.6.1 34z"></path></svg><!-- <i class="fas fa-angle-right"></i> --></div>
                    </div>
                </div>
                <div class="card bg-info text-white mb-2">
                    <div class="card-body">Yazar Sayısı:<%=authors.size()%></div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="authors.jsp">Yazarlar</a>
                        <div class="small text-white"><svg class="svg-inline--fa fa-angle-right fa-w-8" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="angle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512" data-fa-i2svg=""><path fill="currentColor" d="M224.3 273l-136 136c-9.4 9.4-24.6 9.4-33.9 0l-22.6-22.6c-9.4-9.4-9.4-24.6 0-33.9l96.4-96.4-96.4-96.4c-9.4-9.4-9.4-24.6 0-33.9L54.3 103c9.4-9.4 24.6-9.4 33.9 0l136 136c9.5 9.4 9.5 24.6.1 34z"></path></svg><!-- <i class="fas fa-angle-right"></i> --></div>
                    </div>
                </div>
                <div class="card bg-danger text-white mb-2">
                    <div class="card-body">Kategori Sayısı:<%=categories.size()%></div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="categories.jsp">Kategoriler</a>
                        <div class="small text-white"><svg class="svg-inline--fa fa-angle-right fa-w-8" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="angle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512" data-fa-i2svg=""><path fill="currentColor" d="M224.3 273l-136 136c-9.4 9.4-24.6 9.4-33.9 0l-22.6-22.6c-9.4-9.4-9.4-24.6 0-33.9l96.4-96.4-96.4-96.4c-9.4-9.4-9.4-24.6 0-33.9L54.3 103c9.4-9.4 24.6-9.4 33.9 0l136 136c9.5 9.4 9.5 24.6.1 34z"></path></svg><!-- <i class="fas fa-angle-right"></i> --></div>
                    </div>
                </div>
                <div class="card bg-warning text-white mb-2">
                    <div class="card-body">Yayınevi Sayısı:<%=publishers.size()%></div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a class="small text-white stretched-link" href="publishers.jsp">Yayınevleri</a>
                        <div class="small text-white"><svg class="svg-inline--fa fa-angle-right fa-w-8" aria-hidden="true" focusable="false" data-prefix="fas" data-icon="angle-right" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 256 512" data-fa-i2svg=""><path fill="currentColor" d="M224.3 273l-136 136c-9.4 9.4-24.6 9.4-33.9 0l-22.6-22.6c-9.4-9.4-9.4-24.6 0-33.9l96.4-96.4-96.4-96.4c-9.4-9.4-9.4-24.6 0-33.9L54.3 103c9.4-9.4 24.6-9.4 33.9 0l136 136c9.5 9.4 9.5 24.6.1 34z"></path></svg><!-- <i class="fas fa-angle-right"></i> --></div>
                    </div>
                </div>
            </div>
            <%@ include file="footer.jsp" %>
        </div>
    </div>
    <%@ include file="script.jsp" %>
</body>
</html>
