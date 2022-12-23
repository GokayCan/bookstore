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
        
        String root=getServletContext().getRealPath("/");

        String uploadPath = root+"/assets/" + sImageFileName;

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
        
        String txtName = new String(request.getParameter("txtName").getBytes("ISO-8859-9"), "UTF-8");
        String txtSubject = new String(request.getParameter("txtSubject").getBytes("ISO-8859-9"), "UTF-8");
        String txtPageNumber = new String(request.getParameter("txtPageNumber").getBytes("ISO-8859-9"), "UTF-8");
        String txtPrintCount = new String(request.getParameter("txtPrintCount").getBytes("ISO-8859-9"), "UTF-8");
        
        book.setName(txtName);
        book.setSubject(txtSubject);
        book.setPageNumber(txtPageNumber);
        book.setPrintCount(txtPrintCount);
        book.setImageUrl(sImageFileName);
        book.setPublisherID(Integer.parseInt(request.getParameter("slcPublisher")));
        book.setPublishDate(sqlPublishDate);
        book.setStock(Integer.parseInt((request.getParameter("txtStock"))));
        book.setEnable(true);
        
        service.Add(book);

        response.sendRedirect("books.jsp");
    }
    
}
