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
@WebServlet("/employee/EmployeeUserUpdate")
public class EmployeeUserUpdate extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        
        boolean value = false;
        UserService service=new UserService();

        User user=new User();

        Part file=request.getPart("txtImage");

        String sImageFileName = file.getSubmittedFileName();  // get selected image file name
        
        if(sImageFileName.equals("")){
            System.out.println("Dosya Bos");
            sImageFileName=request.getParameter("txtImageUrl");
        }
        
        else{
            System.out.println(sImageFileName);
            value = true;
        }
        
        String root=getServletContext().getRealPath("/");

        String uploadPath = root+"/assets/" + sImageFileName;

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

        java.util.Date BirthDate = null;
        try {
            BirthDate = sdf.parse(request.getParameter("txtBirthDate"));
        } catch (ParseException ex) {
            ex.printStackTrace();
        }

        java.sql.Date sqlBirthDate = new java.sql.Date(BirthDate.getTime());
        
        String txtFirstName = new String(request.getParameter("txtFirstName").getBytes("ISO-8859-9"), "UTF-8");
        String txtLastName = new String(request.getParameter("txtLastName").getBytes("ISO-8859-9"), "UTF-8");
        String txtEmail = new String(request.getParameter("txtEmail").getBytes("ISO-8859-9"), "UTF-8");
        String txtPassword = new String(request.getParameter("txtPassword").getBytes("ISO-8859-9"), "UTF-8");
        String txtAddress = new String(request.getParameter("txtAddress").getBytes("ISO-8859-9"), "UTF-8");
        String txtPhoneNumber = new String(request.getParameter("txtPhoneNumber").getBytes("ISO-8859-9"), "UTF-8");
        
        int CityID = Integer.parseInt(request.getParameter("slcCity"));
        
        
        user.setID(Integer.parseInt(request.getParameter("txtID")));
        user.setFirstName(txtFirstName);
        user.setLastName(txtLastName);
        user.setEmail(txtEmail);
        user.setPassword(txtPassword);
        user.setAddress(txtAddress);
        user.setPhoneNumber(txtPhoneNumber);
        user.setCityID(CityID);
        user.setBirthDate(sqlBirthDate);
        user.setImageUrl(sImageFileName);
        
        service.Update(user);

        response.sendRedirect("users.jsp");
    }
    
}