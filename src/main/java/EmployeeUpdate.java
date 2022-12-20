import BusinessLayer.EmployeeService;
import DataAccess.Entities.Employee;
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
@WebServlet("/admin/EmployeeUpdate")
public class EmployeeUpdate extends HttpServlet{
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
            
        EmployeeService service=new EmployeeService();

        Employee employee=new Employee();

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

        java.util.Date StartDate = null;
        try {
            StartDate = sdf.parse(request.getParameter("txtStartDate"));
        } catch (ParseException ex) {
            ex.printStackTrace();
        }

        java.sql.Date sqlStartDate = new java.sql.Date(StartDate.getTime());
        
        String txtFirstName = new String(request.getParameter("txtFirstName").getBytes("ISO-8859-9"), "UTF-8");
        String txtLastName = new String(request.getParameter("txtLastName").getBytes("ISO-8859-9"), "UTF-8");
        String txtUserName = new String(request.getParameter("txtUserName").getBytes("ISO-8859-9"), "UTF-8");
        String txtPassword = new String(request.getParameter("txtPassword").getBytes("ISO-8859-9"), "UTF-8");
        
        
        employee.setID(Integer.parseInt(request.getParameter("txtID")));
        employee.setFirstName(txtFirstName);
        employee.setLastName(txtLastName);
        employee.setTCNo(txtUserName);
        employee.setPassword(txtPassword);
        employee.setStartDate(sqlStartDate);
        employee.setDocument(sImageFileName);
        
        service.Update(employee);

        response.sendRedirect("employees.jsp");
    }
    
}