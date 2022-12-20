<%-- 
    Document   : update-book
    Created on : 11 Ara 2022, 21:41:42
    Author     : Bahadır
--%>
<%@include file="authorization.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@page import="DataAccess.Entities.*"%>
<%@page import="BusinessLayer.*"%>
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
            int ID=Integer.parseInt(request.getParameter("ID"));
            
            BookService service=new BookService();
            Book book=new Book();
            
            book=service.getByID(ID);
        
        %>
            
            <form action="EmployeeBookUpdate" method="post" enctype="multipart/form-data" name="form" onsubmit="return Validate();">
            <div class="card">
                <div class="card-header">
                    <div class="card-tools">
                        <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                          <i class="fas fa-minus"></i>
                        </button>
                        <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                          <i class="fas fa-times"></i>
                        </button>
                  </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kitap Adı</label>
                        <input type="hidden" name="txtID" value="<%=book.getID()%>">
                        <input type="text" class="form-control" name="txtName" value="<%=book.getName()%>">
                    </div>
                </div>
                <div class="card-body">
                        <div class="form-group mb-2">
                            <label class="form-label">Kitap Konusu</label>
                            <textarea class="form-control" name="txtSubject"><%=book.getSubject()%></textarea>
                        </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kitap Stok Miktarı</label>
                        <input type="text" class="form-control" name="txtStock" value="<%=book.getStock()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kitap Yayım Tarihi</label>
                        <input type="text"  class="form-control" disabled name="txtOldPublishDate" value="<%=book.getPublishDate()%>">
                        <input type="date" class="form-control" name="txtPublishDate">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kitap Yayınevi</label>
                        <select class="form-control form-select" name="slcPublisher">
                            <%
                                PublisherService publisherService=new PublisherService();
                                ArrayList<Publisher> publishers=new ArrayList<Publisher>();
                                publishers=publisherService.List();
                                for(int i=0;i<publishers.size();i++){
                            %>
                            <option value="<%=publishers.get(i).getID()%>"><%=publishers.get(i).getName()%></option>
                            <%        
                                }
                            %>      
                        </select>
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kitap Sayfa Sayısı</label>
                        <input type="text" class="form-control" name="txtPageNumber" value="<%=book.getPageNumber()%>">
                    </div>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label class="form-label">Kitap Baskı Sayısı</label>
                        <input type="text" class="form-control" name="txtPrintCount" value="<%=book.getPrintCount()%>">
                    </div>
                </div>
                <div class="card-body">
                    <label>Kategoriler</label>
                    <br>
                    <div class="form-check form-check-inline">
                    <%
                        CategoryService categoryService=new CategoryService();
                        ArrayList<Category> categories=new ArrayList<Category>();
                        categories=categoryService.List();
                        for(int i=0;i<categories.size();i++){
                            %>

                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input" name="cbCategory" value="<%=categories.get(i).getID()%>" id="<%=categories.get(i).getID()%>">
                                <label for="<%=categories.get(i).getID()%>"><%=categories.get(i).getName()%></label>
                            </div>
                    <%        
                        }
                    %>   
                        
                    </div>
                </div>
                <div class="card-body">
                    <label>Yazarlar</label>
                    <br>
                    <div class="form-check form-check-inline">
                    <%
                        AuthorService authorService=new AuthorService();
                        ArrayList<Author> authors=new ArrayList<Author>();
                        authors=authorService.List();
                        for(int i=0;i<authors.size();i++){
                            %>

                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input" name="cbAuthor" value="<%=authors.get(i).getID()%>" id="<%=authors.get(i).getID()%>">
                                <label for="<%=authors.get(i).getID()%>"><%=authors.get(i).getFirstName()%></label>
                                <label for="<%=authors.get(i).getID()%>"><%=authors.get(i).getLastName()%></label>
                            </div>
                    <%        
                        }
                    %>   
                        
                    </div>
                </div>
                <div class="card-body">
                    <label>Çevirmenler</label>
                    <br>
                    <%
                        TranslatorService translatorService=new TranslatorService();
                        ArrayList<Translator> translators=new ArrayList<Translator>();
                        translators=translatorService.List();
                        for(int i=0;i<translators.size();i++){
                            %>

                            <div class="form-check form-check-inline">
                                <input type="checkbox" class="form-check-input" name="cbTranslator" value="<%=translators.get(i).getID()%>" id="<%=translators.get(i).getID()%>">
                                <label for="<%=translators.get(i).getID()%>"><%=translators.get(i).getFirstName()%></label>
                                <label for="<%=translators.get(i).getID()%>"><%=translators.get(i).getLastName()%></label>
                            </div>
                    <%        
                        }
                    %>
                </div>
                <div class="card-body">
                    <div class="form-group mb-2">
                        <label for="exampleInputFile" class="form-label">Kitap Kapak</label>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" id="exampleInputFile" name="txtImage">
                            <label class="custom-file-label" for="exampleInputFile" >Kapak Fotoğrafı Seç</label>
                        </div>
                    </div>
                </div>
                <div class="card-footer">
                    <div style="display:flex;justify-content: end;">
                        <button type="submit" name="save" class="btn btn-success"><i class="fas fa-check"></i> Kaydet</button>
                    </div>
                </div>
            </div>
        </form>
            
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
