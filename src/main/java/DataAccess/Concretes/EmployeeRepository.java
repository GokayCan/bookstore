package DataAccess.Concretes;

import DataAccess.Abstractions.IEmployeeRepository;
import DataAccess.Entities.Employee;
import java.sql.*;
import java.sql.SQLException;
import java.util.ArrayList;

public class EmployeeRepository extends Repository implements IEmployeeRepository {

    public ArrayList<Employee> employees;
    public Employee employee;
    public ResultSet rs;
    public Statement st;
    public PreparedStatement pst;

    @Override
    public ArrayList<Employee> getList() {
        String query = "SELECT * From Employee";

        employees = new ArrayList<Employee>();

        try {
            st = con.createStatement();
            rs = st.executeQuery(query);

            while (rs.next()) {

                employee = new Employee();

                employee.setID(rs.getInt("ID"));
                employee.setFirstName(rs.getString("FirstName"));
                employee.setLastName(rs.getString("LastName"));
                employee.setTCNo(rs.getString("TcNo"));
                employee.setPassword(rs.getString("PassWord"));
                employee.setDocument(rs.getString("Document"));
                employee.setStartDate(rs.getDate("StartDate"));
                employee.setEndDate(rs.getDate("EndDate"));

                employees.add(employee);
            }
            //con.close();
            return employees;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        return null;
    }

    @Override
    public void Add(Employee entity) {
        String query = "INSERT INTO Employee(FirstName,LastName,TCNo,Password,Document,StartDate) VALUES('"+entity.getFirstName()+"','"+entity.getLastName()+"','"+entity.getTCNo()+"','"+entity.getPassword()+"'"
                + ",'"+entity.getDocument()+"','"+entity.getStartDate()+"')";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void Update(Employee employee) {
        
        String query="UPDATE Employee SET FirstName='"+employee.getFirstName()+"',LastName='"+employee.getLastName()+"'"
                + ",TCNo='"+employee.getTCNo()+"',Password='"+employee.getPassword()+"',Document='"+employee.getDocument()+"'"
                + ",StartDate='"+employee.getStartDate()+"' Where ID='"+employee.getID()+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
    }

    @Override
    public void Delete(int ID) {
        String query="DELETE FROM Employee Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            st.execute(query);
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public Employee getById(int ID) {
        Employee employee=new Employee();
        
        String query="SELECT * FROM Employee Where ID='"+ID+"'";
        
        try {
            st=con.createStatement();
            rs=st.executeQuery(query);
            
            rs.next();
            
            employee.setFirstName(rs.getString("FirstName"));
            employee.setLastName(rs.getString("LastName"));
            employee.setTCNo(rs.getString("TcNo"));
            employee.setPassword(rs.getString("Password"));
            employee.setStartDate(rs.getDate("StartDate"));
            employee.setDocument(rs.getString("Document"));
            employee.setID(rs.getInt("ID"));
            //con.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        return employee;
    } 

    @Override
    public Employee AccountExist(String tc, String password) {
        String query = "Select ID,TCNo,Password From Employee where TCNo = ? and Password = ?";
        try{
            pst = con.prepareStatement(query);
            pst.setString(1, tc);
            pst.setString(2, password);
            
            rs=pst.executeQuery();
            rs.next();
            
            Employee emp = new Employee();

            emp.setID(rs.getInt("ID"));
            emp.setTCNo(rs.getString("TCNo"));
            emp.setPassword(rs.getString("Password"));
            //con.close();
            return emp;
        }catch(Exception ex){
            ex.printStackTrace();
        }
        return null;
    }
}
