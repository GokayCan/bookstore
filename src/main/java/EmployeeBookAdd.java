import BusinessLayer.BookService;
import DataAccess.Entities.Book;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig
@WebServlet("/employee/EmployeeBookAdd")
public class EmployeeBookAdd extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            
        BookService service=new BookService();

        Book book=new Book();

        Part file=request.getPart("txtImage");

        String sImageFileName = file.getSubmittedFileName();  // get selected image file name
        
        String uploadPath = "C:/Users/Bahadır/Desktop/bookstore/src/main/webapp/assets/" + sImageFileName;

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        try {

            FileOutputStream fos = new FileOutputStream(uploadPath);
            InputStream is = file.getInputStream();

            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
            fos.close();

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

        book.setName(request.getParameter("txtName"));
        book.setSubject(request.getParameter("txtSubject"));
        book.setPageNumber(request.getParameter("txtPageNumber"));
        book.setPrintCount(request.getParameter("txtPrintCount"));
        book.setImageUrl(sImageFileName);
        book.setPublisherID(Integer.parseInt(request.getParameter("slcPublisher")));
        book.setPublishDate(sqlPublishDate);
        book.setStock(Integer.parseInt((request.getParameter("txtStock"))));
        book.setEnable(true);
        
        service.Add(book);

        response.sendRedirect("books.jsp");
    }
    
}
