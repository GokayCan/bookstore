import BusinessLayer.UserService;
import DataAccess.Entities.User;
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
@WebServlet("/admin/UserUpdate")
public class UserUpdate extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            
        UserService service=new UserService();

        User user=new User();

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

        java.util.Date BirthDate = null;
        try {
            BirthDate = sdf.parse(request.getParameter("txtBirthDate"));
        } catch (ParseException ex) {
            ex.printStackTrace();
        }

        java.sql.Date sqlBirthDate = new java.sql.Date(BirthDate.getTime());
        
        user.setID(Integer.parseInt(request.getParameter("txtID")));
        user.setFirstName(request.getParameter("txtFirstName"));
        user.setLastName(request.getParameter("txtLastName"));
        user.setEmail(request.getParameter("txtEmail"));
        user.setPassword(request.getParameter("txtPassword"));
        user.setAddress(request.getParameter("txtAddress"));
        user.setPhoneNumber(request.getParameter("txtPhoneNumber"));
        user.setCityID(1);
        user.setBirthDate(sqlBirthDate);
        user.setImageUrl(sImageFileName);
        
        service.Update(user);

        response.sendRedirect("users.jsp");
    }
    
}