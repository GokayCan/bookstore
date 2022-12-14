import BusinessLayer.*;
import DataAccess.Entities.*;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/employee/EmployeeBookUpdate")
public class EmployeeBookUpdate extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
        boolean value = false;
        BookService bookService=new BookService();
        BookCategoryService categoryService=new BookCategoryService();
        BookAuthorService authorService=new BookAuthorService();
        BookTranslatorService translatorService=new BookTranslatorService();
        
        Book book=new Book();
        BookCategory bookCategory=new BookCategory();
        BookAuthor bookAuthor=new BookAuthor();
        BookTranslator bookTranslator=new BookTranslator();

        Part file=request.getPart("txtImage");

        String sImageFileName = file.getSubmittedFileName();  // get selected image file name

        if(sImageFileName.equals("")){
            System.out.println("Dosya Boş");
            sImageFileName=request.getParameter("txtImageUrl");
        }
        
        else{
            System.out.println(sImageFileName);
            value = true;
        }
        
        
        String root=getServletContext().getRealPath("/");

        String uploadPath = root+"/assets/" + sImageFileName;  // upload path where we have to upload our actual image

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        try {
            if (value){
                FileOutputStream fos = new FileOutputStream(uploadPath);
                InputStream is = file.getInputStream();

                byte[] data = new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }

        java.util.Date PublishDate = null;
        try {
            PublishDate = sdf.parse(request.getParameter("txtPublishDate"));
        } catch (ParseException ex) {
            ex.printStackTrace();
        }

        java.sql.Date sqlPublishDate = new java.sql.Date(PublishDate.getTime());
        
        String sCategories[] = request.getParameterValues("cbCategory");
        String sAuthors[] = request.getParameterValues("cbAuthor");
        String sTranslators[] = request.getParameterValues("cbTranslator");

        int iBookID = Integer.parseInt(request.getParameter("txtID"));

        if (sCategories == null) {
            //System.out.println("Kategoriler İşaretli Değil");
        } else {
            
            for (int i = 0; i < sCategories.length; i++) {
                categoryService.Delete(iBookID);
            }

            for (int i = 0; i < sCategories.length; i++) {
                bookCategory.setBookID(iBookID);
                bookCategory.setCategoryID(Integer.parseInt(sCategories[i]));
                categoryService.Add(bookCategory);
            }
            
        }
        
        if(sAuthors == null){
            //System.out.println("Yazarlar İşaretli Değil");
        }
        
        else{
            
            for (int i = 0; i < sAuthors.length; i++) {
            authorService.Delete(iBookID);
            }

            for (int i = 0; i < sAuthors.length; i++) {
                bookAuthor.setBookID(iBookID);
                bookAuthor.setAuthorID(Integer.parseInt(sAuthors[i]));
                authorService.Add(bookAuthor);
            }
            
        }

        if(sTranslators == null){
            //System.out.println("Çevirmenler İşaretli Değil");
        }
        
        else{
            
            for (int i = 0; i < sTranslators.length; i++) {
            translatorService.Delete(iBookID);
            }

            for (int i = 0; i < sTranslators.length; i++) {
                bookTranslator.setBookID(iBookID);
                bookTranslator.setTranslatorID(Integer.parseInt(sTranslators[i]));
                translatorService.Add(bookTranslator);
            }
            
        }
        String txtName = new String(request.getParameter("txtName").getBytes("ISO-8859-9"), "UTF-8");
        String txtSubject = new String(request.getParameter("txtSubject").getBytes("ISO-8859-9"), "UTF-8");
        String txtPageNumber = new String(request.getParameter("txtPageNumber").getBytes("ISO-8859-9"), "UTF-8");
        String txtPrintCount = new String(request.getParameter("txtPrintCount").getBytes("ISO-8859-9"), "UTF-8");
        
        book.setID(iBookID);
        book.setName(txtName);
        book.setSubject(txtSubject);
        book.setPageNumber(txtPageNumber);
        book.setPrintCount(txtPrintCount);
        book.setImageUrl(sImageFileName);
        book.setPublisherID(Integer.parseInt(request.getParameter("slcPublisher")));
        book.setPublishDate(sqlPublishDate);
        book.setStock(Integer.parseInt((request.getParameter("txtStock"))));
        book.setEnable(true);
        
        bookService.Update(book);

        response.sendRedirect("books.jsp");
    }
    
}